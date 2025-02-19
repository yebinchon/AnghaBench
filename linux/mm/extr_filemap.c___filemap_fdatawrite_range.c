
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writeback_control {int sync_mode; int range_end; int range_start; int nr_to_write; } ;
struct address_space {int host; } ;
typedef int loff_t ;


 int LONG_MAX ;
 int PAGECACHE_TAG_DIRTY ;
 int do_writepages (struct address_space*,struct writeback_control*) ;
 int mapping_cap_writeback_dirty (struct address_space*) ;
 int mapping_tagged (struct address_space*,int ) ;
 int wbc_attach_fdatawrite_inode (struct writeback_control*,int ) ;
 int wbc_detach_inode (struct writeback_control*) ;

int __filemap_fdatawrite_range(struct address_space *mapping, loff_t start,
    loff_t end, int sync_mode)
{
 int ret;
 struct writeback_control wbc = {
  .sync_mode = sync_mode,
  .nr_to_write = LONG_MAX,
  .range_start = start,
  .range_end = end,
 };

 if (!mapping_cap_writeback_dirty(mapping) ||
     !mapping_tagged(mapping, PAGECACHE_TAG_DIRTY))
  return 0;

 wbc_attach_fdatawrite_inode(&wbc, mapping->host);
 ret = do_writepages(mapping, &wbc);
 wbc_detach_inode(&wbc);
 return ret;
}
