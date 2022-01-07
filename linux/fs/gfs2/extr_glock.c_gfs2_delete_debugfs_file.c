
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int * debugfs_dir; } ;


 int debugfs_remove_recursive (int *) ;

void gfs2_delete_debugfs_file(struct gfs2_sbd *sdp)
{
 debugfs_remove_recursive(sdp->debugfs_dir);
 sdp->debugfs_dir = ((void*)0);
}
