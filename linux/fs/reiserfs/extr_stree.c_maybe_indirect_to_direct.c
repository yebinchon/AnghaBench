
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct treepath {int dummy; } ;
struct super_block {int s_blocksize; } ;
struct reiserfs_transaction_handle {int t_trans_id; } ;
struct page {int dummy; } ;
struct inode {int i_size; int i_count; struct super_block* i_sb; } ;
struct cpu_key {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int i_flags; } ;


 int BUG_ON (int) ;
 char M_SKIP_BALANCING ;
 TYPE_1__* REISERFS_I (struct inode*) ;
 int atomic_read (int *) ;
 int i_nopack_mask ;
 int indirect2direct (struct reiserfs_transaction_handle*,struct inode*,struct page*,struct treepath*,struct cpu_key const*,int,char*) ;
 int pathrelse (struct treepath*) ;
 int tail_has_to_be_packed (struct inode*) ;

__attribute__((used)) static int maybe_indirect_to_direct(struct reiserfs_transaction_handle *th,
        struct inode *inode,
        struct page *page,
        struct treepath *path,
        const struct cpu_key *item_key,
        loff_t new_file_size, char *mode)
{
 struct super_block *sb = inode->i_sb;
 int block_size = sb->s_blocksize;
 int cut_bytes;
 BUG_ON(!th->t_trans_id);
 BUG_ON(new_file_size != inode->i_size);






 if (atomic_read(&inode->i_count) > 1 ||
     !tail_has_to_be_packed(inode) ||
     !page || (REISERFS_I(inode)->i_flags & i_nopack_mask)) {

  *mode = M_SKIP_BALANCING;
  cut_bytes =
      block_size - (new_file_size & (block_size - 1));
  pathrelse(path);
  return cut_bytes;
 }


 return indirect2direct(th, inode, page, path, item_key,
          new_file_size, mode);
}
