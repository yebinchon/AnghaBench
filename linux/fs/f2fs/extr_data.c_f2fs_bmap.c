
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int sector_t ;


 int PAGECACHE_TAG_DIRTY ;
 scalar_t__ f2fs_has_inline_data (struct inode*) ;
 int filemap_write_and_wait (struct address_space*) ;
 int generic_block_bmap (struct address_space*,int ,int ) ;
 int get_data_block_bmap ;
 scalar_t__ mapping_tagged (struct address_space*,int ) ;

__attribute__((used)) static sector_t f2fs_bmap(struct address_space *mapping, sector_t block)
{
 struct inode *inode = mapping->host;

 if (f2fs_has_inline_data(inode))
  return 0;


 if (mapping_tagged(mapping, PAGECACHE_TAG_DIRTY))
  filemap_write_and_wait(mapping);

 return generic_block_bmap(mapping, block, get_data_block_bmap);
}
