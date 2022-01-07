
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct iomap {int flags; } ;
struct inode {int dummy; } ;
typedef int loff_t ;


 int IOMAP_F_BUFFER_HEAD ;
 int PageUptodate (struct page*) ;
 int WARN_ON_ONCE (int) ;
 int __block_write_begin_int (struct page*,int,int,int *,struct iomap*) ;
 int block_commit_write (struct page*,int ,int) ;
 int iomap_page_create (struct inode*,struct page*) ;
 int set_page_dirty (struct page*) ;

__attribute__((used)) static loff_t
iomap_page_mkwrite_actor(struct inode *inode, loff_t pos, loff_t length,
  void *data, struct iomap *iomap)
{
 struct page *page = data;
 int ret;

 if (iomap->flags & IOMAP_F_BUFFER_HEAD) {
  ret = __block_write_begin_int(page, pos, length, ((void*)0), iomap);
  if (ret)
   return ret;
  block_commit_write(page, 0, length);
 } else {
  WARN_ON_ONCE(!PageUptodate(page));
  iomap_page_create(inode, page);
  set_page_dirty(page);
 }

 return length;
}
