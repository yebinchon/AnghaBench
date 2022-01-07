
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_dir ;
 int debugfs_remove_recursive (int ) ;

void nfsd_fault_inject_cleanup(void)
{
 debugfs_remove_recursive(debug_dir);
}
