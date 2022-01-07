
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_ino; TYPE_1__* i_mapping; int i_sb; } ;
struct hfsplus_vh {int attr_file; int start_file; int alloc_file; int cat_file; int ext_file; } ;
struct TYPE_4__ {struct hfsplus_vh* s_vhdr; } ;
struct TYPE_3__ {int * a_ops; } ;


 int EIO ;




 TYPE_2__* HFSPLUS_SB (int ) ;

 int hfsplus_aops ;
 int hfsplus_btree_aops ;
 int hfsplus_inode_read_fork (struct inode*,int *) ;

__attribute__((used)) static int hfsplus_system_read_inode(struct inode *inode)
{
 struct hfsplus_vh *vhdr = HFSPLUS_SB(inode->i_sb)->s_vhdr;

 switch (inode->i_ino) {
 case 129:
  hfsplus_inode_read_fork(inode, &vhdr->ext_file);
  inode->i_mapping->a_ops = &hfsplus_btree_aops;
  break;
 case 130:
  hfsplus_inode_read_fork(inode, &vhdr->cat_file);
  inode->i_mapping->a_ops = &hfsplus_btree_aops;
  break;
 case 132:
  hfsplus_inode_read_fork(inode, &vhdr->alloc_file);
  inode->i_mapping->a_ops = &hfsplus_aops;
  break;
 case 128:
  hfsplus_inode_read_fork(inode, &vhdr->start_file);
  break;
 case 131:
  hfsplus_inode_read_fork(inode, &vhdr->attr_file);
  inode->i_mapping->a_ops = &hfsplus_btree_aops;
  break;
 default:
  return -EIO;
 }

 return 0;
}
