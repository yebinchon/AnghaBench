
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int name; int nlen; } ;
struct fscrypt_name {int dummy; } ;


 int EINVAL ;
 int dbg_is_chk_gen (struct ubifs_info const*) ;
 scalar_t__ fname_len (struct fscrypt_name const*) ;
 int fname_name (struct fscrypt_name const*) ;
 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int dbg_check_name(const struct ubifs_info *c,
     const struct ubifs_dent_node *dent,
     const struct fscrypt_name *nm)
{
 if (!dbg_is_chk_gen(c))
  return 0;
 if (le16_to_cpu(dent->nlen) != fname_len(nm))
  return -EINVAL;
 if (memcmp(dent->name, fname_name(nm), fname_len(nm)))
  return -EINVAL;
 return 0;
}
