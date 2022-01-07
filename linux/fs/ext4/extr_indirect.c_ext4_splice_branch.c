
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ext4_allocation_request {int len; int inode; } ;
typedef int handle_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_3__ {int key; int * bh; int * p; } ;
typedef TYPE_1__ Indirect ;


 int BUFFER_TRACE (int *,char*) ;
 int EXT4_FREE_BLOCKS_FORGET ;
 int cpu_to_le32 (int ) ;
 int ext4_free_blocks (int *,int ,int *,scalar_t__,int,int ) ;
 int ext4_handle_dirty_metadata (int *,int ,int *) ;
 int ext4_journal_get_write_access (int *,int *) ;
 int ext4_mark_inode_dirty (int *,int ) ;
 int jbd_debug (int,char*) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static int ext4_splice_branch(handle_t *handle,
         struct ext4_allocation_request *ar,
         Indirect *where, int num)
{
 int i;
 int err = 0;
 ext4_fsblk_t current_block;






 if (where->bh) {
  BUFFER_TRACE(where->bh, "get_write_access");
  err = ext4_journal_get_write_access(handle, where->bh);
  if (err)
   goto err_out;
 }


 *where->p = where->key;





 if (num == 0 && ar->len > 1) {
  current_block = le32_to_cpu(where->key) + 1;
  for (i = 1; i < ar->len; i++)
   *(where->p + i) = cpu_to_le32(current_block++);
 }



 if (where->bh) {
  jbd_debug(5, "splicing indirect only\n");
  BUFFER_TRACE(where->bh, "call ext4_handle_dirty_metadata");
  err = ext4_handle_dirty_metadata(handle, ar->inode, where->bh);
  if (err)
   goto err_out;
 } else {



  ext4_mark_inode_dirty(handle, ar->inode);
  jbd_debug(5, "splicing direct\n");
 }
 return err;

err_out:
 for (i = 1; i <= num; i++) {





  ext4_free_blocks(handle, ar->inode, where[i].bh, 0, 1,
     EXT4_FREE_BLOCKS_FORGET);
 }
 ext4_free_blocks(handle, ar->inode, ((void*)0), le32_to_cpu(where[num].key),
    ar->len, 0);

 return err;
}
