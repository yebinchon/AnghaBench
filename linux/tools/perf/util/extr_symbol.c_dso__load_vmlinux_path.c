
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct map {int dummy; } ;
struct dso {int dummy; } ;
struct TYPE_2__ {int ignore_vmlinux_buildid; } ;


 char* dso__build_id_filename (struct dso*,int *,int ,int) ;
 int dso__load_vmlinux (struct dso*,struct map*,char*,int) ;
 int free (char*) ;
 int pr_debug (char*,int) ;
 TYPE_1__ symbol_conf ;
 char** vmlinux_path ;
 int vmlinux_path__nr_entries ;

int dso__load_vmlinux_path(struct dso *dso, struct map *map)
{
 int i, err = 0;
 char *filename = ((void*)0);

 pr_debug("Looking at the vmlinux_path (%d entries long)\n",
   vmlinux_path__nr_entries + 1);

 for (i = 0; i < vmlinux_path__nr_entries; ++i) {
  err = dso__load_vmlinux(dso, map, vmlinux_path[i], 0);
  if (err > 0)
   goto out;
 }

 if (!symbol_conf.ignore_vmlinux_buildid)
  filename = dso__build_id_filename(dso, ((void*)0), 0, 0);
 if (filename != ((void*)0)) {
  err = dso__load_vmlinux(dso, map, filename, 1);
  if (err > 0)
   goto out;
  free(filename);
 }
out:
 return err;
}
