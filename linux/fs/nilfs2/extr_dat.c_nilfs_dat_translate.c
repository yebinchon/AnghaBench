
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_dat_entry {int de_blocknr; } ;
struct inode {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef scalar_t__ sector_t ;
typedef int __u64 ;


 int ENOENT ;
 int WARN_ON (int) ;
 int brelse (struct buffer_head*) ;
 scalar_t__ buffer_nilfs_redirected (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 void* kmap_atomic (int ) ;
 int kunmap_atomic (void*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int nilfs_doing_gc () ;
 struct buffer_head* nilfs_mdt_get_frozen_buffer (struct inode*,struct buffer_head*) ;
 struct nilfs_dat_entry* nilfs_palloc_block_get_entry (struct inode*,int ,struct buffer_head*,void*) ;
 int nilfs_palloc_get_entry_block (struct inode*,int ,int ,struct buffer_head**) ;

int nilfs_dat_translate(struct inode *dat, __u64 vblocknr, sector_t *blocknrp)
{
 struct buffer_head *entry_bh, *bh;
 struct nilfs_dat_entry *entry;
 sector_t blocknr;
 void *kaddr;
 int ret;

 ret = nilfs_palloc_get_entry_block(dat, vblocknr, 0, &entry_bh);
 if (ret < 0)
  return ret;

 if (!nilfs_doing_gc() && buffer_nilfs_redirected(entry_bh)) {
  bh = nilfs_mdt_get_frozen_buffer(dat, entry_bh);
  if (bh) {
   WARN_ON(!buffer_uptodate(bh));
   brelse(entry_bh);
   entry_bh = bh;
  }
 }

 kaddr = kmap_atomic(entry_bh->b_page);
 entry = nilfs_palloc_block_get_entry(dat, vblocknr, entry_bh, kaddr);
 blocknr = le64_to_cpu(entry->de_blocknr);
 if (blocknr == 0) {
  ret = -ENOENT;
  goto out;
 }
 *blocknrp = blocknr;

 out:
 kunmap_atomic(kaddr);
 brelse(entry_bh);
 return ret;
}
