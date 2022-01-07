
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {struct address_space* i_mapping; } ;
struct address_space {int dummy; } ;
typedef struct page* pgoff_t ;


 unsigned int AOP_FLAG_NOFS ;
 int BUG_ON (int) ;
 int ENOMEM ;
 struct page* grab_cache_page_write_begin (struct address_space*,struct page*,unsigned int) ;
 int put_page (struct page*) ;
 int swap (struct page*,struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int
mext_page_double_lock(struct inode *inode1, struct inode *inode2,
        pgoff_t index1, pgoff_t index2, struct page *page[2])
{
 struct address_space *mapping[2];
 unsigned fl = AOP_FLAG_NOFS;

 BUG_ON(!inode1 || !inode2);
 if (inode1 < inode2) {
  mapping[0] = inode1->i_mapping;
  mapping[1] = inode2->i_mapping;
 } else {
  swap(index1, index2);
  mapping[0] = inode2->i_mapping;
  mapping[1] = inode1->i_mapping;
 }

 page[0] = grab_cache_page_write_begin(mapping[0], index1, fl);
 if (!page[0])
  return -ENOMEM;

 page[1] = grab_cache_page_write_begin(mapping[1], index2, fl);
 if (!page[1]) {
  unlock_page(page[0]);
  put_page(page[0]);
  return -ENOMEM;
 }





 wait_on_page_writeback(page[0]);
 wait_on_page_writeback(page[1]);
 if (inode1 > inode2)
  swap(page[0], page[1]);

 return 0;
}
