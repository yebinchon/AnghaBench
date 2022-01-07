
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct file {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int fd; } ;


 int ClearPageError (struct page*) ;
 int ClearPageUptodate (struct page*) ;
 TYPE_1__* FILE_HOSTFS_I (struct file*) ;
 scalar_t__ PAGE_SIZE ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int flush_dcache_page (struct page*) ;
 char* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (char*,int ,scalar_t__) ;
 int page_offset (struct page*) ;
 int read_file (int ,int *,char*,scalar_t__) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int hostfs_readpage(struct file *file, struct page *page)
{
 char *buffer;
 loff_t start = page_offset(page);
 int bytes_read, ret = 0;

 buffer = kmap(page);
 bytes_read = read_file(FILE_HOSTFS_I(file)->fd, &start, buffer,
   PAGE_SIZE);
 if (bytes_read < 0) {
  ClearPageUptodate(page);
  SetPageError(page);
  ret = bytes_read;
  goto out;
 }

 memset(buffer + bytes_read, 0, PAGE_SIZE - bytes_read);

 ClearPageError(page);
 SetPageUptodate(page);

 out:
 flush_dcache_page(page);
 kunmap(page);
 unlock_page(page);
 return ret;
}
