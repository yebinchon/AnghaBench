
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct squashfs_cache_entry {int error; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;


 int ERROR (char*,int ,int) ;
 int squashfs_cache_put (struct squashfs_cache_entry*) ;
 int squashfs_copy_cache (struct page*,struct squashfs_cache_entry*,int,int ) ;
 struct squashfs_cache_entry* squashfs_get_datablock (int ,int ,int) ;

int squashfs_readpage_block(struct page *page, u64 block, int bsize, int expected)
{
 struct inode *i = page->mapping->host;
 struct squashfs_cache_entry *buffer = squashfs_get_datablock(i->i_sb,
  block, bsize);
 int res = buffer->error;

 if (res)
  ERROR("Unable to read page, block %llx, size %x\n", block,
   bsize);
 else
  squashfs_copy_cache(page, buffer, expected, 0);

 squashfs_cache_put(buffer);
 return res;
}
