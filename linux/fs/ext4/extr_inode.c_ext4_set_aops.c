
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_mapping; int i_sb; } ;
struct TYPE_2__ {int * a_ops; } ;


 int BUG () ;
 int DELALLOC ;



 scalar_t__ IS_DAX (struct inode*) ;
 int ext4_aops ;
 int ext4_da_aops ;
 int ext4_dax_aops ;
 int ext4_inode_journal_mode (struct inode*) ;
 int ext4_journalled_aops ;
 scalar_t__ test_opt (int ,int ) ;

void ext4_set_aops(struct inode *inode)
{
 switch (ext4_inode_journal_mode(inode)) {
 case 129:
 case 128:
  break;
 case 130:
  inode->i_mapping->a_ops = &ext4_journalled_aops;
  return;
 default:
  BUG();
 }
 if (IS_DAX(inode))
  inode->i_mapping->a_ops = &ext4_dax_aops;
 else if (test_opt(inode->i_sb, DELALLOC))
  inode->i_mapping->a_ops = &ext4_da_aops;
 else
  inode->i_mapping->a_ops = &ext4_aops;
}
