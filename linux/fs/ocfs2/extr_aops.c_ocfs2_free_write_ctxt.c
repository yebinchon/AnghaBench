
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_write_ctxt {int w_di_bh; int w_unwritten_list; } ;
struct inode {int dummy; } ;


 int brelse (int ) ;
 int kfree (struct ocfs2_write_ctxt*) ;
 int ocfs2_free_unwritten_list (struct inode*,int *) ;
 int ocfs2_unlock_pages (struct ocfs2_write_ctxt*) ;

__attribute__((used)) static void ocfs2_free_write_ctxt(struct inode *inode,
      struct ocfs2_write_ctxt *wc)
{
 ocfs2_free_unwritten_list(inode, &wc->w_unwritten_list);
 ocfs2_unlock_pages(wc);
 brelse(wc->w_di_bh);
 kfree(wc);
}
