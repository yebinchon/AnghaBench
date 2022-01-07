
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_znode {size_t iip; int child_cnt; int level; struct ubifs_zbranch* zbranch; int flags; TYPE_1__* parent; } ;
struct ubifs_zbranch {int key; int len; int offs; int lnum; int znode; } ;
struct ubifs_info {int fanout; struct ubifs_zbranch zroot; } ;
struct TYPE_2__ {struct ubifs_zbranch* zbranch; } ;


 int DBG_KEY_BUF_LEN ;
 int dbg_lock ;
 int dbg_snprintf_key (struct ubifs_info const*,int *,char*,int) ;
 int pr_err (char*,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void ubifs_dump_znode(const struct ubifs_info *c,
        const struct ubifs_znode *znode)
{
 int n;
 const struct ubifs_zbranch *zbr;
 char key_buf[DBG_KEY_BUF_LEN];

 spin_lock(&dbg_lock);
 if (znode->parent)
  zbr = &znode->parent->zbranch[znode->iip];
 else
  zbr = &c->zroot;

 pr_err("znode %p, LEB %d:%d len %d parent %p iip %d level %d child_cnt %d flags %lx\n",
        znode, zbr->lnum, zbr->offs, zbr->len, znode->parent, znode->iip,
        znode->level, znode->child_cnt, znode->flags);

 if (znode->child_cnt <= 0 || znode->child_cnt > c->fanout) {
  spin_unlock(&dbg_lock);
  return;
 }

 pr_err("zbranches:\n");
 for (n = 0; n < znode->child_cnt; n++) {
  zbr = &znode->zbranch[n];
  if (znode->level > 0)
   pr_err("\t%d: znode %p LEB %d:%d len %d key %s\n",
          n, zbr->znode, zbr->lnum, zbr->offs, zbr->len,
          dbg_snprintf_key(c, &zbr->key, key_buf,
      DBG_KEY_BUF_LEN));
  else
   pr_err("\t%d: LNC %p LEB %d:%d len %d key %s\n",
          n, zbr->znode, zbr->lnum, zbr->offs, zbr->len,
          dbg_snprintf_key(c, &zbr->key, key_buf,
      DBG_KEY_BUF_LEN));
 }
 spin_unlock(&dbg_lock);
}
