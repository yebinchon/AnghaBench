
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ubifs_info {int dummy; } ;


 int __ubifs_node_calc_hash (struct ubifs_info const*,void const*,int *) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info const*) ;

__attribute__((used)) static inline int ubifs_node_calc_hash(const struct ubifs_info *c,
     const void *buf, u8 *hash)
{
 if (ubifs_authenticated(c))
  return __ubifs_node_calc_hash(c, buf, hash);
 else
  return 0;
}
