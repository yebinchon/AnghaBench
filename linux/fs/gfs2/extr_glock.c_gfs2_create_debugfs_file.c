
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int debugfs_dir; int sd_table_name; } ;


 int S_IFREG ;
 int S_IRUGO ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (char*,int,int ,struct gfs2_sbd*,int *) ;
 int gfs2_glocks_fops ;
 int gfs2_glstats_fops ;
 int gfs2_root ;
 int gfs2_sbstats_fops ;

void gfs2_create_debugfs_file(struct gfs2_sbd *sdp)
{
 sdp->debugfs_dir = debugfs_create_dir(sdp->sd_table_name, gfs2_root);

 debugfs_create_file("glocks", S_IFREG | S_IRUGO, sdp->debugfs_dir, sdp,
       &gfs2_glocks_fops);

 debugfs_create_file("glstats", S_IFREG | S_IRUGO, sdp->debugfs_dir, sdp,
       &gfs2_glstats_fops);

 debugfs_create_file("sbstats", S_IFREG | S_IRUGO, sdp->debugfs_dir, sdp,
       &gfs2_sbstats_fops);
}
