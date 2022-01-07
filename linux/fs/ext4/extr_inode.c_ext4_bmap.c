
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct address_space {struct inode* host; } ;
typedef int sector_t ;
typedef int journal_t ;


 int DELALLOC ;
 int * EXT4_JOURNAL (struct inode*) ;
 int EXT4_STATE_JDATA ;
 int PAGECACHE_TAG_DIRTY ;
 int ext4_clear_inode_state (struct inode*,int ) ;
 int ext4_get_block ;
 scalar_t__ ext4_has_inline_data (struct inode*) ;
 scalar_t__ ext4_test_inode_state (struct inode*,int ) ;
 int filemap_write_and_wait (struct address_space*) ;
 int generic_block_bmap (struct address_space*,int ,int ) ;
 int jbd2_journal_flush (int *) ;
 int jbd2_journal_lock_updates (int *) ;
 int jbd2_journal_unlock_updates (int *) ;
 scalar_t__ mapping_tagged (struct address_space*,int ) ;
 scalar_t__ test_opt (int ,int ) ;

__attribute__((used)) static sector_t ext4_bmap(struct address_space *mapping, sector_t block)
{
 struct inode *inode = mapping->host;
 journal_t *journal;
 int err;




 if (ext4_has_inline_data(inode))
  return 0;

 if (mapping_tagged(mapping, PAGECACHE_TAG_DIRTY) &&
   test_opt(inode->i_sb, DELALLOC)) {





  filemap_write_and_wait(mapping);
 }

 if (EXT4_JOURNAL(inode) &&
     ext4_test_inode_state(inode, EXT4_STATE_JDATA)) {
  ext4_clear_inode_state(inode, EXT4_STATE_JDATA);
  journal = EXT4_JOURNAL(inode);
  jbd2_journal_lock_updates(journal);
  err = jbd2_journal_flush(journal);
  jbd2_journal_unlock_updates(journal);

  if (err)
   return 0;
 }

 return generic_block_bmap(mapping, block, ext4_get_block);
}
