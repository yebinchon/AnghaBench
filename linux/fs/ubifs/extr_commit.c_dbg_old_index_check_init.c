
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_zbranch {int lnum; int offs; int len; } ;
struct ubifs_info {int max_idx_node_sz; struct ubifs_debug_info* dbg; } ;
struct TYPE_2__ {int sqnum; } ;
struct ubifs_idx_node {TYPE_1__ ch; int level; } ;
struct ubifs_debug_info {int old_zroot_sqnum; int old_zroot_level; struct ubifs_zbranch old_zroot; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int UBIFS_IDX_NODE ;
 int kfree (struct ubifs_idx_node*) ;
 struct ubifs_idx_node* kmalloc (int ,int ) ;
 int le16_to_cpu (int ) ;
 int le64_to_cpu (int ) ;
 int ubifs_read_node (struct ubifs_info*,struct ubifs_idx_node*,int ,int,int,int) ;

int dbg_old_index_check_init(struct ubifs_info *c, struct ubifs_zbranch *zroot)
{
 struct ubifs_idx_node *idx;
 int lnum, offs, len, err = 0;
 struct ubifs_debug_info *d = c->dbg;

 d->old_zroot = *zroot;
 lnum = d->old_zroot.lnum;
 offs = d->old_zroot.offs;
 len = d->old_zroot.len;

 idx = kmalloc(c->max_idx_node_sz, GFP_NOFS);
 if (!idx)
  return -ENOMEM;

 err = ubifs_read_node(c, idx, UBIFS_IDX_NODE, len, lnum, offs);
 if (err)
  goto out;

 d->old_zroot_level = le16_to_cpu(idx->level);
 d->old_zroot_sqnum = le64_to_cpu(idx->ch.sqnum);
out:
 kfree(idx);
 return err;
}
