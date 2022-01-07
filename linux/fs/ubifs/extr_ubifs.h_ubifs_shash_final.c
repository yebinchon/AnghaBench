
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ubifs_info {int dummy; } ;
struct shash_desc {int dummy; } ;


 int crypto_shash_final (struct shash_desc*,int *) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info const*) ;

__attribute__((used)) static inline int ubifs_shash_final(const struct ubifs_info *c,
        struct shash_desc *desc, u8 *out)
{
 return ubifs_authenticated(c) ? crypto_shash_final(desc, out) : 0;
}
