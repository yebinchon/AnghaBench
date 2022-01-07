
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct buffer_head {unsigned int b_size; struct buffer_head* b_this_page; } ;


 int gfs2_trans_add_data (int ,struct buffer_head*) ;
 struct buffer_head* page_buffers (struct page*) ;
 int set_buffer_uptodate (struct buffer_head*) ;

void gfs2_page_add_databufs(struct gfs2_inode *ip, struct page *page,
       unsigned int from, unsigned int len)
{
 struct buffer_head *head = page_buffers(page);
 unsigned int bsize = head->b_size;
 struct buffer_head *bh;
 unsigned int to = from + len;
 unsigned int start, end;

 for (bh = head, start = 0; bh != head || !start;
      bh = bh->b_this_page, start = end) {
  end = start + bsize;
  if (end <= from)
   continue;
  if (start >= to)
   break;
  set_buffer_uptodate(bh);
  gfs2_trans_add_data(ip->i_gl, bh);
 }
}
