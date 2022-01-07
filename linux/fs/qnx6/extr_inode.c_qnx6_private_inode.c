
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct qnx6_sb_info {int dummy; } ;
struct qnx6_root_node {int levels; int ptr; int size; } ;
struct qnx6_inode_info {int di_filelevels; int di_block_ptr; } ;
struct inode {int i_mode; TYPE_1__* i_mapping; int i_size; } ;
struct TYPE_2__ {int * a_ops; } ;


 struct qnx6_inode_info* QNX6_I (struct inode*) ;
 struct qnx6_sb_info* QNX6_SB (struct super_block*) ;
 int S_IFREG ;
 int S_IRUSR ;
 int fs64_to_cpu (struct qnx6_sb_info*,int ) ;
 int memcpy (int ,int ,int) ;
 struct inode* new_inode (struct super_block*) ;
 int qnx6_aops ;

__attribute__((used)) static struct inode *qnx6_private_inode(struct super_block *s,
     struct qnx6_root_node *p)
{
 struct inode *inode = new_inode(s);
 if (inode) {
  struct qnx6_inode_info *ei = QNX6_I(inode);
  struct qnx6_sb_info *sbi = QNX6_SB(s);
  inode->i_size = fs64_to_cpu(sbi, p->size);
  memcpy(ei->di_block_ptr, p->ptr, sizeof(p->ptr));
  ei->di_filelevels = p->levels;
  inode->i_mode = S_IFREG | S_IRUSR;
  inode->i_mapping->a_ops = &qnx6_aops;
 }
 return inode;
}
