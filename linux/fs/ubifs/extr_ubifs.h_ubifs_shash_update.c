
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int dummy; } ;
struct shash_desc {int dummy; } ;


 int crypto_shash_update (struct shash_desc*,void const*,unsigned int) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info const*) ;

__attribute__((used)) static inline int ubifs_shash_update(const struct ubifs_info *c,
          struct shash_desc *desc, const void *buf,
          unsigned int len)
{
 int err = 0;

 if (ubifs_authenticated(c)) {
  err = crypto_shash_update(desc, buf, len);
  if (err < 0)
   return err;
 }

 return 0;
}
