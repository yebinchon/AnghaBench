
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_sb_node {int dummy; } ;
struct ubifs_info {int min_io_size; } ;


 int ALIGN (int ,int ) ;
 int ENOMEM ;
 struct ubifs_sb_node* ERR_PTR (int) ;
 int GFP_NOFS ;
 int UBIFS_SB_LNUM ;
 int UBIFS_SB_NODE ;
 int UBIFS_SB_NODE_SZ ;
 int kfree (struct ubifs_sb_node*) ;
 struct ubifs_sb_node* kmalloc (int ,int ) ;
 int ubifs_read_node (struct ubifs_info*,struct ubifs_sb_node*,int ,int ,int ,int ) ;

__attribute__((used)) static struct ubifs_sb_node *ubifs_read_sb_node(struct ubifs_info *c)
{
 struct ubifs_sb_node *sup;
 int err;

 sup = kmalloc(ALIGN(UBIFS_SB_NODE_SZ, c->min_io_size), GFP_NOFS);
 if (!sup)
  return ERR_PTR(-ENOMEM);

 err = ubifs_read_node(c, sup, UBIFS_SB_NODE, UBIFS_SB_NODE_SZ,
         UBIFS_SB_LNUM, 0);
 if (err) {
  kfree(sup);
  return ERR_PTR(err);
 }

 return sup;
}
