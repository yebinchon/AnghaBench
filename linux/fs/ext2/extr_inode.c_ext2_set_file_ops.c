
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_mapping; int i_sb; int * i_fop; int * i_op; } ;
struct TYPE_2__ {int * a_ops; } ;


 scalar_t__ IS_DAX (struct inode*) ;
 int NOBH ;
 int ext2_aops ;
 int ext2_dax_aops ;
 int ext2_file_inode_operations ;
 int ext2_file_operations ;
 int ext2_nobh_aops ;
 scalar_t__ test_opt (int ,int ) ;

void ext2_set_file_ops(struct inode *inode)
{
 inode->i_op = &ext2_file_inode_operations;
 inode->i_fop = &ext2_file_operations;
 if (IS_DAX(inode))
  inode->i_mapping->a_ops = &ext2_dax_aops;
 else if (test_opt(inode->i_sb, NOBH))
  inode->i_mapping->a_ops = &ext2_nobh_aops;
 else
  inode->i_mapping->a_ops = &ext2_aops;
}
