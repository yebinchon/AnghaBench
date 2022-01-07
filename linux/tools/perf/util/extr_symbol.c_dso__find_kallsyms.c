
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct map {int dummy; } ;
struct dso {int build_id; int has_build_id; } ;
typedef int path ;
typedef int host_build_id ;


 int BUILD_ID_SIZE ;
 int DSO__NAME_KCORE ;
 int PATH_MAX ;
 int SBUILD_ID_SIZE ;
 int build_id__sprintf (int ,int,char*) ;
 int build_id_cache__kallsyms_path (char*,char*,int) ;
 int buildid_dir ;
 int dso__build_id_equal (struct dso*,int *) ;
 scalar_t__ filename__readable (char*) ;
 int find_matching_kcore (struct map*,char*,int) ;
 int pr_err (char*,char*) ;
 int scnprintf (char*,int,char*,int ,int ,char*) ;
 char* strdup (char*) ;
 scalar_t__ sysfs__read_build_id (char*,int *,int) ;
 int validate_kcore_addresses (char*,struct map*) ;

__attribute__((used)) static char *dso__find_kallsyms(struct dso *dso, struct map *map)
{
 u8 host_build_id[BUILD_ID_SIZE];
 char sbuild_id[SBUILD_ID_SIZE];
 bool is_host = 0;
 char path[PATH_MAX];

 if (!dso->has_build_id) {




  goto proc_kallsyms;
 }

 if (sysfs__read_build_id("/sys/kernel/notes", host_build_id,
     sizeof(host_build_id)) == 0)
  is_host = dso__build_id_equal(dso, host_build_id);


 if (is_host) {







  if (filename__readable("/proc/kcore") &&
      !validate_kcore_addresses("/proc/kallsyms", map))
   goto proc_kallsyms;
 }

 build_id__sprintf(dso->build_id, sizeof(dso->build_id), sbuild_id);


 scnprintf(path, sizeof(path), "%s/%s/%s",
    buildid_dir, DSO__NAME_KCORE, sbuild_id);

 if (!find_matching_kcore(map, path, sizeof(path)))
  return strdup(path);


 if (is_host) {
proc_kallsyms:
  return strdup("/proc/kallsyms");
 }


 if (!build_id_cache__kallsyms_path(sbuild_id, path, sizeof(path))) {
  pr_err("No kallsyms or vmlinux with build-id %s was found\n",
         sbuild_id);
  return ((void*)0);
 }

 return strdup(path);
}
