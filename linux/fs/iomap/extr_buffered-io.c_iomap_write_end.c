
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iomap_page_ops {int (* page_done ) (struct inode*,scalar_t__,int,struct page*,struct iomap*) ;} ;
struct iomap {scalar_t__ type; int flags; struct iomap_page_ops* page_ops; } ;
struct inode {scalar_t__ i_size; int i_mapping; } ;
typedef scalar_t__ loff_t ;


 int IOMAP_F_BUFFER_HEAD ;
 int IOMAP_F_SIZE_CHANGED ;
 scalar_t__ IOMAP_INLINE ;
 int __iomap_write_end (struct inode*,scalar_t__,unsigned int,unsigned int,struct page*,struct iomap*) ;
 int block_write_end (int *,int ,scalar_t__,unsigned int,unsigned int,struct page*,int *) ;
 int i_size_write (struct inode*,scalar_t__) ;
 int iomap_write_end_inline (struct inode*,struct page*,struct iomap*,scalar_t__,unsigned int) ;
 int iomap_write_failed (struct inode*,scalar_t__,unsigned int) ;
 int pagecache_isize_extended (struct inode*,scalar_t__,scalar_t__) ;
 int put_page (struct page*) ;
 int stub1 (struct inode*,scalar_t__,int,struct page*,struct iomap*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int
iomap_write_end(struct inode *inode, loff_t pos, unsigned len,
  unsigned copied, struct page *page, struct iomap *iomap)
{
 const struct iomap_page_ops *page_ops = iomap->page_ops;
 loff_t old_size = inode->i_size;
 int ret;

 if (iomap->type == IOMAP_INLINE) {
  ret = iomap_write_end_inline(inode, page, iomap, pos, copied);
 } else if (iomap->flags & IOMAP_F_BUFFER_HEAD) {
  ret = block_write_end(((void*)0), inode->i_mapping, pos, len, copied,
    page, ((void*)0));
 } else {
  ret = __iomap_write_end(inode, pos, len, copied, page, iomap);
 }






 if (pos + ret > old_size) {
  i_size_write(inode, pos + ret);
  iomap->flags |= IOMAP_F_SIZE_CHANGED;
 }
 unlock_page(page);

 if (old_size < pos)
  pagecache_isize_extended(inode, old_size, pos);
 if (page_ops && page_ops->page_done)
  page_ops->page_done(inode, pos, ret, page, iomap);
 put_page(page);

 if (ret < len)
  iomap_write_failed(inode, pos, len);
 return ret;
}
