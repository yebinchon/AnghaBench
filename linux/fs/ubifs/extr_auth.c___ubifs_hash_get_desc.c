
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int hash_tfm; } ;
struct shash_desc {int dummy; } ;


 struct shash_desc* ubifs_get_desc (struct ubifs_info const*,int ) ;

struct shash_desc *__ubifs_hash_get_desc(const struct ubifs_info *c)
{
 return ubifs_get_desc(c, c->hash_tfm);
}
