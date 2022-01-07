
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct gfs2_log_header_host {int dummy; } ;
struct gfs2_log_header {int dummy; } ;
struct gfs2_jdesc {int jd_inode; } ;
struct buffer_head {scalar_t__ b_data; } ;


 struct gfs2_sbd* GFS2_SB (int ) ;
 int __get_log_header (struct gfs2_sbd*,struct gfs2_log_header const*,unsigned int,struct gfs2_log_header_host*) ;
 int brelse (struct buffer_head*) ;
 int gfs2_replay_read_block (struct gfs2_jdesc*,unsigned int,struct buffer_head**) ;

__attribute__((used)) static int get_log_header(struct gfs2_jdesc *jd, unsigned int blk,
     struct gfs2_log_header_host *head)
{
 struct gfs2_sbd *sdp = GFS2_SB(jd->jd_inode);
 struct buffer_head *bh;
 int error;

 error = gfs2_replay_read_block(jd, blk, &bh);
 if (error)
  return error;

 error = __get_log_header(sdp, (const struct gfs2_log_header *)bh->b_data,
     blk, head);
 brelse(bh);

 return error;
}
