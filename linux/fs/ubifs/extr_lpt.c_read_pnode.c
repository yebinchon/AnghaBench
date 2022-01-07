
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_pnode {int iip; struct ubifs_nnode* parent; void* num; struct ubifs_lprops* lprops; } ;
struct ubifs_nnode {struct ubifs_nbranch* nbranch; } ;
struct ubifs_nbranch {int lnum; int offs; struct ubifs_pnode* pnode; } ;
struct ubifs_lprops {int flags; int free; } ;
struct ubifs_info {int pnodes_have; scalar_t__ big_lpt; int pnode_sz; int leb_size; void* lpt_nod_buf; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int UBIFS_LPT_FANOUT ;
 void* calc_pnode_num_from_parent (struct ubifs_info*,struct ubifs_nnode*,int) ;
 int dump_stack () ;
 int kfree (struct ubifs_pnode*) ;
 struct ubifs_pnode* kzalloc (int,int ) ;
 int set_pnode_lnum (struct ubifs_info*,struct ubifs_pnode*) ;
 int ubifs_categorize_lprops (struct ubifs_info*,struct ubifs_lprops* const) ;
 int ubifs_dump_pnode (struct ubifs_info*,struct ubifs_pnode*,struct ubifs_nnode*,int) ;
 int ubifs_err (struct ubifs_info*,char*,void*,...) ;
 int ubifs_leb_read (struct ubifs_info*,int,void*,int,int ,int) ;
 int unpack_pnode (struct ubifs_info*,void*,struct ubifs_pnode*) ;
 int validate_pnode (struct ubifs_info*,struct ubifs_pnode*,struct ubifs_nnode*,int) ;

__attribute__((used)) static int read_pnode(struct ubifs_info *c, struct ubifs_nnode *parent, int iip)
{
 struct ubifs_nbranch *branch;
 struct ubifs_pnode *pnode = ((void*)0);
 void *buf = c->lpt_nod_buf;
 int err, lnum, offs;

 branch = &parent->nbranch[iip];
 lnum = branch->lnum;
 offs = branch->offs;
 pnode = kzalloc(sizeof(struct ubifs_pnode), GFP_NOFS);
 if (!pnode)
  return -ENOMEM;

 if (lnum == 0) {





  int i;

  if (c->big_lpt)
   pnode->num = calc_pnode_num_from_parent(c, parent, iip);
  for (i = 0; i < UBIFS_LPT_FANOUT; i++) {
   struct ubifs_lprops * const lprops = &pnode->lprops[i];

   lprops->free = c->leb_size;
   lprops->flags = ubifs_categorize_lprops(c, lprops);
  }
 } else {
  err = ubifs_leb_read(c, lnum, buf, offs, c->pnode_sz, 1);
  if (err)
   goto out;
  err = unpack_pnode(c, buf, pnode);
  if (err)
   goto out;
 }
 err = validate_pnode(c, pnode, parent, iip);
 if (err)
  goto out;
 if (!c->big_lpt)
  pnode->num = calc_pnode_num_from_parent(c, parent, iip);
 branch->pnode = pnode;
 pnode->parent = parent;
 pnode->iip = iip;
 set_pnode_lnum(c, pnode);
 c->pnodes_have += 1;
 return 0;

out:
 ubifs_err(c, "error %d reading pnode at %d:%d", err, lnum, offs);
 ubifs_dump_pnode(c, pnode, parent, iip);
 dump_stack();
 ubifs_err(c, "calc num: %d", calc_pnode_num_from_parent(c, parent, iip));
 kfree(pnode);
 return err;
}
