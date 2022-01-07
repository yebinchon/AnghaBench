
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int host; } ;
typedef int loff_t ;


 int filemap_write_and_wait_range (struct address_space*,int ,int ) ;
 int pnfs_sync_inode (int ,int) ;

int nfs_filemap_write_and_wait_range(struct address_space *mapping,
  loff_t lstart, loff_t lend)
{
 int ret;

 ret = filemap_write_and_wait_range(mapping, lstart, lend);
 if (ret == 0)
  ret = pnfs_sync_inode(mapping->host, 1);
 return ret;
}
