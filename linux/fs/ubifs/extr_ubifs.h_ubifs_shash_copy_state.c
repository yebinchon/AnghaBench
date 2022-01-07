
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;
struct shash_desc {int dummy; } ;


 int __ubifs_shash_copy_state (struct ubifs_info const*,struct shash_desc*,struct shash_desc*) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info const*) ;

__attribute__((used)) static inline int ubifs_shash_copy_state(const struct ubifs_info *c,
        struct shash_desc *src,
        struct shash_desc *target)
{
 if (ubifs_authenticated(c))
  return __ubifs_shash_copy_state(c, src, target);
 else
  return 0;
}
