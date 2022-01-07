
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {int dummy; } ;
struct dnode_of_data {int nid; struct page* node_page; struct page* inode_page; struct inode* inode; } ;
typedef int nid_t ;


 int memset (struct dnode_of_data*,int ,int) ;

__attribute__((used)) static inline void set_new_dnode(struct dnode_of_data *dn, struct inode *inode,
  struct page *ipage, struct page *npage, nid_t nid)
{
 memset(dn, 0, sizeof(*dn));
 dn->inode = inode;
 dn->inode_page = ipage;
 dn->node_page = npage;
 dn->nid = nid;
}
