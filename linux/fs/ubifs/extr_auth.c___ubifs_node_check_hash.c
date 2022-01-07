
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ubifs_info {int dummy; } ;


 int EPERM ;
 int UBIFS_HASH_ARR_SZ ;
 int __ubifs_node_calc_hash (struct ubifs_info const*,void const*,int *) ;
 scalar_t__ ubifs_check_hash (struct ubifs_info const*,int const*,int *) ;

int __ubifs_node_check_hash(const struct ubifs_info *c, const void *node,
       const u8 *expected)
{
 u8 calc[UBIFS_HASH_ARR_SZ];
 int err;

 err = __ubifs_node_calc_hash(c, node, calc);
 if (err)
  return err;

 if (ubifs_check_hash(c, expected, calc))
  return -EPERM;

 return 0;
}
