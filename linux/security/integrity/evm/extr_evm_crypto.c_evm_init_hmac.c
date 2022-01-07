
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xattr {int value_len; int value; } ;
struct shash_desc {int dummy; } ;
struct inode {int dummy; } ;


 int EVM_XATTR_HMAC ;
 int HASH_ALGO_SHA1 ;
 scalar_t__ IS_ERR (struct shash_desc*) ;
 int PTR_ERR (struct shash_desc*) ;
 int crypto_shash_update (struct shash_desc*,int ,int ) ;
 int hmac_add_misc (struct shash_desc*,struct inode*,int ,char*) ;
 struct shash_desc* init_desc (int ,int ) ;
 int kfree (struct shash_desc*) ;
 int pr_info (char*) ;

int evm_init_hmac(struct inode *inode, const struct xattr *lsm_xattr,
    char *hmac_val)
{
 struct shash_desc *desc;

 desc = init_desc(EVM_XATTR_HMAC, HASH_ALGO_SHA1);
 if (IS_ERR(desc)) {
  pr_info("init_desc failed\n");
  return PTR_ERR(desc);
 }

 crypto_shash_update(desc, lsm_xattr->value, lsm_xattr->value_len);
 hmac_add_misc(desc, inode, EVM_XATTR_HMAC, hmac_val);
 kfree(desc);
 return 0;
}
