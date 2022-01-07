
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int name; int nlen; } ;
struct fscrypt_name {int dummy; } ;


 int do_lookup_nm (struct ubifs_info*,union ubifs_key const*,void*,struct fscrypt_name const*) ;
 int fname_len (struct fscrypt_name const*) ;
 int fname_name (struct fscrypt_name const*) ;
 int le16_to_cpu (int ) ;
 int memcmp (int ,int ,int) ;
 int ubifs_tnc_lookup (struct ubifs_info*,union ubifs_key const*,void*) ;

int ubifs_tnc_lookup_nm(struct ubifs_info *c, const union ubifs_key *key,
   void *node, const struct fscrypt_name *nm)
{
 int err, len;
 const struct ubifs_dent_node *dent = node;





 err = ubifs_tnc_lookup(c, key, node);
 if (err)
  return err;

 len = le16_to_cpu(dent->nlen);
 if (fname_len(nm) == len && !memcmp(dent->name, fname_name(nm), len))
  return 0;






 return do_lookup_nm(c, key, node, nm);
}
