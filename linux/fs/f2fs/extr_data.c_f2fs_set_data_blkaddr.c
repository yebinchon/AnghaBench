
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnode_of_data {int node_changed; int node_page; } ;


 int NODE ;
 int __set_data_blkaddr (struct dnode_of_data*) ;
 int f2fs_wait_on_page_writeback (int ,int ,int,int) ;
 scalar_t__ set_page_dirty (int ) ;

void f2fs_set_data_blkaddr(struct dnode_of_data *dn)
{
 f2fs_wait_on_page_writeback(dn->node_page, NODE, 1, 1);
 __set_data_blkaddr(dn);
 if (set_page_dirty(dn->node_page))
  dn->node_changed = 1;
}
