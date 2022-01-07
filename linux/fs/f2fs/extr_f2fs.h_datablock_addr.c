
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct f2fs_node {int i; } ;
typedef int block_t ;
typedef int __le32 ;


 struct f2fs_node* F2FS_NODE (struct page*) ;
 int IS_INODE (struct page*) ;
 int * blkaddr_in_node (struct f2fs_node*) ;
 scalar_t__ f2fs_has_extra_attr (struct inode*) ;
 int get_extra_isize (struct inode*) ;
 int le32_to_cpu (int ) ;
 int offset_in_addr (int *) ;

__attribute__((used)) static inline block_t datablock_addr(struct inode *inode,
   struct page *node_page, unsigned int offset)
{
 struct f2fs_node *raw_node;
 __le32 *addr_array;
 int base = 0;
 bool is_inode = IS_INODE(node_page);

 raw_node = F2FS_NODE(node_page);


 if (is_inode) {
  if (!inode)
   base = offset_in_addr(&raw_node->i);
  else if (f2fs_has_extra_attr(inode))
   base = get_extra_isize(inode);
 }

 addr_array = blkaddr_in_node(raw_node);
 return le32_to_cpu(addr_array[base + offset]);
}
