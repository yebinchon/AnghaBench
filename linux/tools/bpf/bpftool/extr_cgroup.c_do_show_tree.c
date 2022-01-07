
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BPF_F_QUERY_EFFECTIVE ;
 int FTW_MOUNT ;
 char* GET_ARG () ;
 int NEXT_ARG () ;


 int do_show_tree_fn ;
 int errno ;
 char* find_cgroup_root () ;
 int free (char*) ;
 scalar_t__ is_prefix (char*,char*) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_end_array (int ) ;
 int jsonw_start_array (int ) ;
 int nftw (char*,int ,int,int ) ;
 int p_err (char*,...) ;
 int printf (char*,char*,char*,char*,char*,char*) ;
 int query_flags ;
 int strerror (int ) ;

__attribute__((used)) static int do_show_tree(int argc, char **argv)
{
 char *cgroup_root, *cgroup_alloced = ((void*)0);
 int ret;

 query_flags = 0;

 if (!argc) {
  cgroup_alloced = find_cgroup_root();
  if (!cgroup_alloced) {
   p_err("cgroup v2 isn't mounted");
   return -1;
  }
  cgroup_root = cgroup_alloced;
 } else {
  cgroup_root = GET_ARG();

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
 }

 if (json_output)
  jsonw_start_array(json_wtr);
 else
  printf("%s\n"
         "%-8s %-15s %-15s %-15s\n",
         "CgroupPath",
         "ID", "AttachType", "AttachFlags", "Name");

 switch (nftw(cgroup_root, do_show_tree_fn, 1024, FTW_MOUNT)) {
 case 129:
  p_err("can't iterate over %s: %s", cgroup_root,
        strerror(errno));
  ret = -1;
  break;
 case 128:
  ret = -1;
  break;
 default:
  ret = 0;
 }

 if (json_output)
  jsonw_end_array(json_wtr);

 free(cgroup_alloced);

 return ret;
}
