
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
typedef scalar_t__ uint32_t ;
struct ubifs_info {int double_hash; } ;
struct ubifs_dent_node {int cookie; } ;


 int EOPNOTSUPP ;
 int do_lookup_dh (struct ubifs_info*,union ubifs_key const*,void*,scalar_t__) ;
 scalar_t__ le32_to_cpu (int ) ;
 int ubifs_tnc_lookup (struct ubifs_info*,union ubifs_key const*,void*) ;

int ubifs_tnc_lookup_dh(struct ubifs_info *c, const union ubifs_key *key,
   void *node, uint32_t cookie)
{
 int err;
 const struct ubifs_dent_node *dent = node;

 if (!c->double_hash)
  return -EOPNOTSUPP;





 err = ubifs_tnc_lookup(c, key, node);
 if (err)
  return err;

 if (le32_to_cpu(dent->cookie) == cookie)
  return 0;





 return do_lookup_dh(c, key, node, cookie);
}
