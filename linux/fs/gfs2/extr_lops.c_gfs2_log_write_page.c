
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct page {int dummy; } ;
struct gfs2_sbd {struct super_block* sd_vfs; } ;


 int gfs2_log_bmap (struct gfs2_sbd*) ;
 int gfs2_log_write (struct gfs2_sbd*,struct page*,int ,int ,int ) ;

void gfs2_log_write_page(struct gfs2_sbd *sdp, struct page *page)
{
 struct super_block *sb = sdp->sd_vfs;
 gfs2_log_write(sdp, page, sb->s_blocksize, 0,
         gfs2_log_bmap(sdp));
}
