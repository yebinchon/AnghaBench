
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * proc_info_root ;
 int proc_info_root_name ;
 int remove_proc_entry (int ,int *) ;

int reiserfs_proc_info_global_done(void)
{
 if (proc_info_root != ((void*)0)) {
  proc_info_root = ((void*)0);
  remove_proc_entry(proc_info_root_name, ((void*)0));
 }
 return 0;
}
