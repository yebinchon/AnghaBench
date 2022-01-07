
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {struct ubifs_znode* cnext; } ;
struct ubifs_info {scalar_t__ cmt_state; struct ubifs_znode* cnext; } ;


 scalar_t__ COMMIT_BROKEN ;
 int kfree (struct ubifs_znode*) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 scalar_t__ ubifs_zn_obsolete (struct ubifs_znode*) ;

__attribute__((used)) static void tnc_destroy_cnext(struct ubifs_info *c)
{
 struct ubifs_znode *cnext;

 if (!c->cnext)
  return;
 ubifs_assert(c, c->cmt_state == COMMIT_BROKEN);
 cnext = c->cnext;
 do {
  struct ubifs_znode *znode = cnext;

  cnext = cnext->cnext;
  if (ubifs_zn_obsolete(znode))
   kfree(znode);
 } while (cnext && cnext != c->cnext);
}
