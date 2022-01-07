
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;
struct shash_desc {int dummy; } ;


 int crypto_shash_init (struct shash_desc*) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info const*) ;

__attribute__((used)) static inline int ubifs_shash_init(const struct ubifs_info *c,
       struct shash_desc *desc)
{
 if (ubifs_authenticated(c))
  return crypto_shash_init(desc);
 else
  return 0;
}
