
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_zbranch {scalar_t__ len; int key; scalar_t__ leaf; } ;
struct ubifs_info {scalar_t__ replaying; } ;


 int ENOENT ;
 int fallible_read_node (struct ubifs_info*,int *,struct ubifs_zbranch*,void*) ;
 int is_hash_key (struct ubifs_info*,int *) ;
 int lnc_add (struct ubifs_info*,struct ubifs_zbranch*,void*) ;
 int memcpy (void*,scalar_t__,scalar_t__) ;
 int ubifs_assert (struct ubifs_info*,int) ;
 int ubifs_tnc_read_node (struct ubifs_info*,struct ubifs_zbranch*,void*) ;

__attribute__((used)) static int tnc_read_hashed_node(struct ubifs_info *c, struct ubifs_zbranch *zbr,
    void *node)
{
 int err;

 ubifs_assert(c, is_hash_key(c, &zbr->key));

 if (zbr->leaf) {

  ubifs_assert(c, zbr->len != 0);
  memcpy(node, zbr->leaf, zbr->len);
  return 0;
 }

 if (c->replaying) {
  err = fallible_read_node(c, &zbr->key, zbr, node);




  if (err == 0)
   err = -ENOENT;
  else if (err == 1)
   err = 0;
 } else {
  err = ubifs_tnc_read_node(c, zbr, node);
 }
 if (err)
  return err;


 err = lnc_add(c, zbr, node);
 return err;
}
