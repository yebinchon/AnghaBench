
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * proc_info_root ;
 int proc_info_root_name ;
 int * proc_mkdir (int ,int *) ;
 int reiserfs_warning (int *,char*,int ) ;

int reiserfs_proc_info_global_init(void)
{
 if (proc_info_root == ((void*)0)) {
  proc_info_root = proc_mkdir(proc_info_root_name, ((void*)0));
  if (!proc_info_root) {
   reiserfs_warning(((void*)0), "cannot create /proc/%s",
      proc_info_root_name);
   return 1;
  }
 }
 return 0;
}
