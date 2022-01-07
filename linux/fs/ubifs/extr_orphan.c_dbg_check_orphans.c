
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;
struct check_info {int missing; int node; int root; scalar_t__ leaf_cnt; scalar_t__ tot_inos; scalar_t__ last_ino; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int RB_ROOT ;
 int UBIFS_MAX_INO_NODE_SZ ;
 int dbg_cmt (char*,scalar_t__) ;
 int dbg_free_check_tree (int *) ;
 int dbg_is_chk_orph (struct ubifs_info*) ;
 int dbg_orphan_check ;
 int dbg_scan_orphans (struct ubifs_info*,struct check_info*) ;
 int dbg_walk_index (struct ubifs_info*,int *,int *,struct check_info*) ;
 int kfree (int ) ;
 int kmalloc (int ,int ) ;
 int ubifs_err (struct ubifs_info*,char*,...) ;

__attribute__((used)) static int dbg_check_orphans(struct ubifs_info *c)
{
 struct check_info ci;
 int err;

 if (!dbg_is_chk_orph(c))
  return 0;

 ci.last_ino = 0;
 ci.tot_inos = 0;
 ci.missing = 0;
 ci.leaf_cnt = 0;
 ci.root = RB_ROOT;
 ci.node = kmalloc(UBIFS_MAX_INO_NODE_SZ, GFP_NOFS);
 if (!ci.node) {
  ubifs_err(c, "out of memory");
  return -ENOMEM;
 }

 err = dbg_scan_orphans(c, &ci);
 if (err)
  goto out;

 err = dbg_walk_index(c, &dbg_orphan_check, ((void*)0), &ci);
 if (err) {
  ubifs_err(c, "cannot scan TNC, error %d", err);
  goto out;
 }

 if (ci.missing) {
  ubifs_err(c, "%lu missing orphan(s)", ci.missing);
  err = -EINVAL;
  goto out;
 }

 dbg_cmt("last inode number is %lu", ci.last_ino);
 dbg_cmt("total number of inodes is %lu", ci.tot_inos);
 dbg_cmt("total number of leaf nodes is %llu", ci.leaf_cnt);

out:
 dbg_free_check_tree(&ci.root);
 kfree(ci.node);
 return err;
}
