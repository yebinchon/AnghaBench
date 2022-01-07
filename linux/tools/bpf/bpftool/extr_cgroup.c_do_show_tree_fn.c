
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct FTW {int level; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 scalar_t__ EINVAL ;
 int FTW_D ;
 int O_RDONLY ;
 int SHOW_TREE_FN_ERR ;
 int __MAX_BPF_ATTACH_TYPE ;
 int close (int) ;
 int count_attached_bpf_progs (int,int) ;
 scalar_t__ errno ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_array (int ) ;
 int jsonw_end_object (int ) ;
 int jsonw_name (int ,char*) ;
 int jsonw_start_array (int ) ;
 int jsonw_start_object (int ) ;
 int jsonw_string_field (int ,char*,char const*) ;
 int open (char const*,int ) ;
 int p_err (char*,char const*,int ) ;
 int printf (char*,char const*) ;
 int show_attached_bpf_progs (int,int,int ) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int do_show_tree_fn(const char *fpath, const struct stat *sb,
      int typeflag, struct FTW *ftw)
{
 enum bpf_attach_type type;
 bool skip = 1;
 int cgroup_fd;

 if (typeflag != FTW_D)
  return 0;

 cgroup_fd = open(fpath, O_RDONLY);
 if (cgroup_fd < 0) {
  p_err("can't open cgroup %s: %s", fpath, strerror(errno));
  return SHOW_TREE_FN_ERR;
 }

 for (type = 0; type < __MAX_BPF_ATTACH_TYPE; type++) {
  int count = count_attached_bpf_progs(cgroup_fd, type);

  if (count < 0 && errno != EINVAL) {
   p_err("can't query bpf programs attached to %s: %s",
         fpath, strerror(errno));
   close(cgroup_fd);
   return SHOW_TREE_FN_ERR;
  }
  if (count > 0) {
   skip = 0;
   break;
  }
 }

 if (skip) {
  close(cgroup_fd);
  return 0;
 }

 if (json_output) {
  jsonw_start_object(json_wtr);
  jsonw_string_field(json_wtr, "cgroup", fpath);
  jsonw_name(json_wtr, "programs");
  jsonw_start_array(json_wtr);
 } else {
  printf("%s\n", fpath);
 }

 for (type = 0; type < __MAX_BPF_ATTACH_TYPE; type++)
  show_attached_bpf_progs(cgroup_fd, type, ftw->level);

 if (errno == EINVAL)




  errno = 0;

 if (json_output) {
  jsonw_end_array(json_wtr);
  jsonw_end_object(json_wtr);
 }

 close(cgroup_fd);

 return 0;
}
