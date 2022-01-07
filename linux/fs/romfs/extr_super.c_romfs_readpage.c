
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
struct file {int dummy; } ;
typedef unsigned long loff_t ;
struct TYPE_4__ {unsigned long i_dataoffset; } ;
struct TYPE_3__ {struct inode* host; } ;


 int EIO ;
 int ENOMEM ;
 unsigned long PAGE_SIZE ;
 TYPE_2__* ROMFS_I (struct inode*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 unsigned long i_size_read (struct inode*) ;
 void* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (void*,int ,unsigned long) ;
 unsigned long page_offset (struct page*) ;
 int romfs_dev_read (int ,unsigned long,void*,unsigned long) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int romfs_readpage(struct file *file, struct page *page)
{
 struct inode *inode = page->mapping->host;
 loff_t offset, size;
 unsigned long fillsize, pos;
 void *buf;
 int ret;

 buf = kmap(page);
 if (!buf)
  return -ENOMEM;


 offset = page_offset(page);
 size = i_size_read(inode);
 fillsize = 0;
 ret = 0;
 if (offset < size) {
  size -= offset;
  fillsize = size > PAGE_SIZE ? PAGE_SIZE : size;

  pos = ROMFS_I(inode)->i_dataoffset + offset;

  ret = romfs_dev_read(inode->i_sb, pos, buf, fillsize);
  if (ret < 0) {
   SetPageError(page);
   fillsize = 0;
   ret = -EIO;
  }
 }

 if (fillsize < PAGE_SIZE)
  memset(buf + fillsize, 0, PAGE_SIZE - fillsize);
 if (ret == 0)
  SetPageUptodate(page);

 flush_dcache_page(page);
 kunmap(page);
 unlock_page(page);
 return ret;
}
