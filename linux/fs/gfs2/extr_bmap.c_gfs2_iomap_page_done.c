
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct iomap {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_trans {scalar_t__ tr_num_buf_new; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 struct gfs2_sbd* GFS2_SB (struct inode*) ;
 int I_DIRTY_DATASYNC ;
 int __mark_inode_dirty (struct inode*,int ) ;
 TYPE_1__* current ;
 int gfs2_is_stuffed (struct gfs2_inode*) ;
 int gfs2_page_add_databufs (struct gfs2_inode*,struct page*,int ,unsigned int) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int offset_in_page (int ) ;

__attribute__((used)) static void gfs2_iomap_page_done(struct inode *inode, loff_t pos,
     unsigned copied, struct page *page,
     struct iomap *iomap)
{
 struct gfs2_trans *tr = current->journal_info;
 struct gfs2_inode *ip = GFS2_I(inode);
 struct gfs2_sbd *sdp = GFS2_SB(inode);

 if (page && !gfs2_is_stuffed(ip))
  gfs2_page_add_databufs(ip, page, offset_in_page(pos), copied);

 if (tr->tr_num_buf_new)
  __mark_inode_dirty(inode, I_DIRTY_DATASYNC);

 gfs2_trans_end(sdp);
}
