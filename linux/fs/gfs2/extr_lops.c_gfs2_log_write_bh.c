
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_sbd {int dummy; } ;
struct buffer_head {int b_size; int b_page; } ;


 int bh_offset (struct buffer_head*) ;
 int gfs2_log_bmap (struct gfs2_sbd*) ;
 int gfs2_log_write (struct gfs2_sbd*,int ,int ,int ,int ) ;

__attribute__((used)) static void gfs2_log_write_bh(struct gfs2_sbd *sdp, struct buffer_head *bh)
{
 gfs2_log_write(sdp, bh->b_page, bh->b_size, bh_offset(bh),
         gfs2_log_bmap(sdp));
}
