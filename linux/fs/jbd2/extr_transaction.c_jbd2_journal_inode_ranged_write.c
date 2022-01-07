
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jbd2_inode {int dummy; } ;
typedef scalar_t__ loff_t ;
typedef int handle_t ;


 int JI_WAIT_DATA ;
 int JI_WRITE_DATA ;
 int jbd2_journal_file_inode (int *,struct jbd2_inode*,int,scalar_t__,scalar_t__) ;

int jbd2_journal_inode_ranged_write(handle_t *handle,
  struct jbd2_inode *jinode, loff_t start_byte, loff_t length)
{
 return jbd2_journal_file_inode(handle, jinode,
   JI_WRITE_DATA | JI_WAIT_DATA, start_byte,
   start_byte + length - 1);
}
