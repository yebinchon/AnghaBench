
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * batadv_debugfs ;
 int debugfs_remove_recursive (int *) ;

void batadv_debugfs_destroy(void)
{
 debugfs_remove_recursive(batadv_debugfs);
 batadv_debugfs = ((void*)0);
}
