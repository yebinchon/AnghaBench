
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct gfs2_sbd {int * sd_master_dir; int * sd_root_dir; } ;


 int GFS2_LFC_KILL_SB ;
 int GFS2_LOG_HEAD_FLUSH_SYNC ;
 int dput (int *) ;
 int gfs2_log_flush (struct gfs2_sbd*,int *,int) ;
 int kill_block_super (struct super_block*) ;
 int shrink_dcache_sb (struct super_block*) ;

__attribute__((used)) static void gfs2_kill_sb(struct super_block *sb)
{
 struct gfs2_sbd *sdp = sb->s_fs_info;

 if (sdp == ((void*)0)) {
  kill_block_super(sb);
  return;
 }

 gfs2_log_flush(sdp, ((void*)0), GFS2_LOG_HEAD_FLUSH_SYNC | GFS2_LFC_KILL_SB);
 dput(sdp->sd_root_dir);
 dput(sdp->sd_master_dir);
 sdp->sd_root_dir = ((void*)0);
 sdp->sd_master_dir = ((void*)0);
 shrink_dcache_sb(sb);
 kill_block_super(sb);
}
