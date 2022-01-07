
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_zbranch {int key; } ;
struct ubifs_info {int dummy; } ;
struct check_info {scalar_t__ last_ino; int tot_inos; int missing; int leaf_cnt; int root; TYPE_1__* node; } ;
typedef scalar_t__ ino_t ;
struct TYPE_2__ {scalar_t__ nlink; } ;


 scalar_t__ UBIFS_INO_KEY ;
 int dbg_find_check_orphan (int *,scalar_t__) ;
 int dbg_find_orphan (struct ubifs_info*,scalar_t__) ;
 scalar_t__ key_inum (struct ubifs_info*,int *) ;
 scalar_t__ key_type (struct ubifs_info*,int *) ;
 int ubifs_err (struct ubifs_info*,char*,unsigned long,...) ;
 int ubifs_tnc_read_node (struct ubifs_info*,struct ubifs_zbranch*,TYPE_1__*) ;

__attribute__((used)) static int dbg_orphan_check(struct ubifs_info *c, struct ubifs_zbranch *zbr,
       void *priv)
{
 struct check_info *ci = priv;
 ino_t inum;
 int err;

 inum = key_inum(c, &zbr->key);
 if (inum != ci->last_ino) {

  if (key_type(c, &zbr->key) != UBIFS_INO_KEY)
   ubifs_err(c, "found orphan node ino %lu, type %d",
      (unsigned long)inum, key_type(c, &zbr->key));
  ci->last_ino = inum;
  ci->tot_inos += 1;
  err = ubifs_tnc_read_node(c, zbr, ci->node);
  if (err) {
   ubifs_err(c, "node read failed, error %d", err);
   return err;
  }
  if (ci->node->nlink == 0)

   if (!dbg_find_check_orphan(&ci->root, inum) &&
       !dbg_find_orphan(c, inum)) {
    ubifs_err(c, "missing orphan, ino %lu",
       (unsigned long)inum);
    ci->missing += 1;
   }
 }
 ci->leaf_cnt += 1;
 return 0;
}
