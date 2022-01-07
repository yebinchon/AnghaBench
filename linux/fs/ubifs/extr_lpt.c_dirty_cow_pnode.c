
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_pnode {size_t iip; TYPE_2__* parent; int flags; int * cnext; } ;
struct ubifs_info {int dirty_pn_cnt; } ;
struct TYPE_4__ {TYPE_1__* nbranch; } ;
struct TYPE_3__ {struct ubifs_pnode* pnode; } ;


 int COW_CNODE ;
 int DIRTY_CNODE ;
 int ENOMEM ;
 struct ubifs_pnode* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int OBSOLETE_CNODE ;
 int __clear_bit (int ,int *) ;
 int __set_bit (int ,int *) ;
 int add_pnode_dirt (struct ubifs_info*,struct ubifs_pnode*) ;
 struct ubifs_pnode* kmemdup (struct ubifs_pnode*,int,int ) ;
 int replace_cats (struct ubifs_info*,struct ubifs_pnode*,struct ubifs_pnode*) ;
 int test_and_set_bit (int ,int *) ;
 int test_bit (int ,int *) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct ubifs_pnode *dirty_cow_pnode(struct ubifs_info *c,
        struct ubifs_pnode *pnode)
{
 struct ubifs_pnode *p;

 if (!test_bit(COW_CNODE, &pnode->flags)) {

  if (!test_and_set_bit(DIRTY_CNODE, &pnode->flags)) {
   c->dirty_pn_cnt += 1;
   add_pnode_dirt(c, pnode);
  }
  return pnode;
 }


 p = kmemdup(pnode, sizeof(struct ubifs_pnode), GFP_NOFS);
 if (unlikely(!p))
  return ERR_PTR(-ENOMEM);

 p->cnext = ((void*)0);
 __set_bit(DIRTY_CNODE, &p->flags);
 __clear_bit(COW_CNODE, &p->flags);
 replace_cats(c, pnode, p);

 ubifs_assert(c, !test_bit(OBSOLETE_CNODE, &pnode->flags));
 __set_bit(OBSOLETE_CNODE, &pnode->flags);

 c->dirty_pn_cnt += 1;
 add_pnode_dirt(c, pnode);
 pnode->parent->nbranch[p->iip].pnode = p;
 return p;
}
