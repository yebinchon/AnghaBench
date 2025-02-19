
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct f2fs_node {int dummy; } ;
struct dnode_of_data {int ofs_in_node; int data_blkaddr; int inode; int node_page; } ;
typedef int __le32 ;


 struct f2fs_node* F2FS_NODE (int ) ;
 scalar_t__ IS_INODE (int ) ;
 int * blkaddr_in_node (struct f2fs_node*) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ f2fs_has_extra_attr (int ) ;
 int get_extra_isize (int ) ;

__attribute__((used)) static void __set_data_blkaddr(struct dnode_of_data *dn)
{
 struct f2fs_node *rn = F2FS_NODE(dn->node_page);
 __le32 *addr_array;
 int base = 0;

 if (IS_INODE(dn->node_page) && f2fs_has_extra_attr(dn->inode))
  base = get_extra_isize(dn->inode);


 addr_array = blkaddr_in_node(rn);
 addr_array[base + dn->ofs_in_node] = cpu_to_le32(dn->data_blkaddr);
}
