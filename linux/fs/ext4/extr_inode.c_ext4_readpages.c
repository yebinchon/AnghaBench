
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;


 scalar_t__ ext4_has_inline_data (struct inode*) ;
 int ext4_mpage_readpages (struct address_space*,struct list_head*,int *,unsigned int,int) ;

__attribute__((used)) static int
ext4_readpages(struct file *file, struct address_space *mapping,
  struct list_head *pages, unsigned nr_pages)
{
 struct inode *inode = mapping->host;


 if (ext4_has_inline_data(inode))
  return 0;

 return ext4_mpage_readpages(mapping, pages, ((void*)0), nr_pages, 1);
}
