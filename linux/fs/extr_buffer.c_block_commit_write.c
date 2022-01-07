
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {TYPE_1__* mapping; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct inode* host; } ;


 int __block_commit_write (struct inode*,struct page*,unsigned int,unsigned int) ;

int block_commit_write(struct page *page, unsigned from, unsigned to)
{
 struct inode *inode = page->mapping->host;
 __block_commit_write(inode,page,from,to);
 return 0;
}
