
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;


 int BPF_F_QUERY_EFFECTIVE ;
 char* GET_ARG () ;
 int NEXT_ARG () ;
 int O_RDONLY ;
 int REQ_ARGS (int) ;
 int __MAX_BPF_ATTACH_TYPE ;
 int close (int) ;
 scalar_t__ is_prefix (char*,char*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_array (int ) ;
 int jsonw_start_array (int ) ;
 int open (char const*,int ) ;
 int p_err (char*,char const*) ;
 int printf (char*,char*,char*,char*,char*) ;
 int query_flags ;
 scalar_t__ show_attached_bpf_progs (int,int,int ) ;

__attribute__((used)) static int do_show(int argc, char **argv)
{
 enum bpf_attach_type type;
 const char *path;
 int cgroup_fd;
 int ret = -1;

 query_flags = 0;

 if (!REQ_ARGS(1))
  return -1;
 path = GET_ARG();

 while (argc) {
  if (is_prefix(*argv, "effective")) {
   if (query_flags & BPF_F_QUERY_EFFECTIVE) {
    p_err("duplicated argument: %s", *argv);
    return -1;
   }
   query_flags |= BPF_F_QUERY_EFFECTIVE;
   NEXT_ARG();
  } else {
   p_err("expected no more arguments, 'effective', got: '%s'?",
         *argv);
   return -1;
  }
 }

 cgroup_fd = open(path, O_RDONLY);
 if (cgroup_fd < 0) {
  p_err("can't open cgroup %s", path);
  goto exit;
 }

 if (json_output)
  jsonw_start_array(json_wtr);
 else
  printf("%-8s %-15s %-15s %-15s\n", "ID", "AttachType",
         "AttachFlags", "Name");

 for (type = 0; type < __MAX_BPF_ATTACH_TYPE; type++) {






  if (show_attached_bpf_progs(cgroup_fd, type, 0) == 0)
   ret = 0;
 }

 if (json_output)
  jsonw_end_array(json_wtr);

 close(cgroup_fd);
exit:
 return ret;
}
