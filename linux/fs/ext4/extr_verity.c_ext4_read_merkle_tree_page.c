
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int i_mapping; } ;
typedef int pgoff_t ;


 int PAGE_SHIFT ;
 int ext4_verity_metadata_pos (struct inode*) ;
 struct page* read_mapping_page (int ,int,int *) ;

__attribute__((used)) static struct page *ext4_read_merkle_tree_page(struct inode *inode,
            pgoff_t index)
{
 index += ext4_verity_metadata_pos(inode) >> PAGE_SHIFT;

 return read_mapping_page(inode->i_mapping, index, ((void*)0));
}
