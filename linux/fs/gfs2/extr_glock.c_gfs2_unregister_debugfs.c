
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_remove (int *) ;
 int * gfs2_root ;

void gfs2_unregister_debugfs(void)
{
 debugfs_remove(gfs2_root);
 gfs2_root = ((void*)0);
}
