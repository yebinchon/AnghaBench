
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
typedef int handle_t ;


 int EXT4_MAXQUOTAS_TRANS_BLOCKS (int ) ;
 scalar_t__ EXT4_RESERVE_TRANS_BLOCKS ;
 scalar_t__ ext4_handle_has_enough_credits (int *,scalar_t__) ;
 scalar_t__ ext4_journal_extend (int *,int) ;
 int ext4_journal_restart (int *,int) ;

__attribute__((used)) static int extend_credit_for_blkdel(handle_t *handle, struct inode *inode)
{
 int retval = 0, needed;

 if (ext4_handle_has_enough_credits(handle, EXT4_RESERVE_TRANS_BLOCKS+1))
  return 0;






 needed = 3 + EXT4_MAXQUOTAS_TRANS_BLOCKS(inode->i_sb);

 if (ext4_journal_extend(handle, needed) != 0)
  retval = ext4_journal_restart(handle, needed);

 return retval;
}
