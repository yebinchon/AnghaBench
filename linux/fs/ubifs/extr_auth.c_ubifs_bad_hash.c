
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct ubifs_info {int hash_len; } ;


 int UBIFS_HASH_ARR_SZ ;
 int __ubifs_node_calc_hash (struct ubifs_info const*,void const*,int const*) ;
 int min (int,int) ;
 int ubifs_err (struct ubifs_info const*,char*,int,int,...) ;

void ubifs_bad_hash(const struct ubifs_info *c, const void *node, const u8 *hash,
      int lnum, int offs)
{
 int len = min(c->hash_len, 20);
 int cropped = len != c->hash_len;
 const char *cont = cropped ? "..." : "";

 u8 calc[UBIFS_HASH_ARR_SZ];

 __ubifs_node_calc_hash(c, node, calc);

 ubifs_err(c, "hash mismatch on node at LEB %d:%d", lnum, offs);
 ubifs_err(c, "hash expected:   %*ph%s", len, hash, cont);
 ubifs_err(c, "hash calculated: %*ph%s", len, calc, cont);
}
