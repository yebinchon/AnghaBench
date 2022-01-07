
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int EAGAIN ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 int ext4_mpage_readpages (TYPE_1__*,int *,struct page*,int,int) ;
 int ext4_readpage_inline (struct inode*,struct page*) ;
 int trace_ext4_readpage (struct page*) ;

__attribute__((used)) static int ext4_readpage(struct file *file, struct page *page)
{
 int ret = -EAGAIN;
 struct inode *inode = page->mapping->host;

 trace_ext4_readpage(page);

 if (ext4_has_inline_data(inode))
  ret = ext4_readpage_inline(inode, page);

 if (ret == -EAGAIN)
  return ext4_mpage_readpages(page->mapping, ((void*)0), page, 1,
      0);

 return ret;
}
