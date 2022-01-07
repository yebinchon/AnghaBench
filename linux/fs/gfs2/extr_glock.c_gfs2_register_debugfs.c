
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debugfs_create_dir (char*,int *) ;
 int gfs2_root ;

void gfs2_register_debugfs(void)
{
 gfs2_root = debugfs_create_dir("gfs2", ((void*)0));
}
