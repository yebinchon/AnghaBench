
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dnode_of_data {int * inode_page; int * node_page; } ;


 int f2fs_put_page (int *,int) ;

__attribute__((used)) static inline void f2fs_put_dnode(struct dnode_of_data *dn)
{
 if (dn->node_page)
  f2fs_put_page(dn->node_page, 1);
 if (dn->inode_page && dn->node_page != dn->inode_page)
  f2fs_put_page(dn->inode_page, 0);
 dn->node_page = ((void*)0);
 dn->inode_page = ((void*)0);
}
