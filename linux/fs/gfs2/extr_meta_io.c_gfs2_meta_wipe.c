
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_gl; int i_inode; } ;
struct buffer_head {int dummy; } ;


 struct gfs2_sbd* GFS2_SB (int *) ;
 int NO_CREATE ;
 int REMOVE_META ;
 int brelse (struct buffer_head*) ;
 struct buffer_head* gfs2_getbuf (int ,int ,int ) ;
 int gfs2_log_lock (struct gfs2_sbd*) ;
 int gfs2_log_unlock (struct gfs2_sbd*) ;
 int gfs2_remove_from_journal (struct buffer_head*,int ) ;
 int lock_buffer (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

void gfs2_meta_wipe(struct gfs2_inode *ip, u64 bstart, u32 blen)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct buffer_head *bh;

 while (blen) {
  bh = gfs2_getbuf(ip->i_gl, bstart, NO_CREATE);
  if (bh) {
   lock_buffer(bh);
   gfs2_log_lock(sdp);
   gfs2_remove_from_journal(bh, REMOVE_META);
   gfs2_log_unlock(sdp);
   unlock_buffer(bh);
   brelse(bh);
  }

  bstart++;
  blen--;
 }
}
