
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_info {int dummy; } ;


 int UBIFS_DENT_KEY ;
 int UBIFS_XENT_KEY ;
 int key_type (struct ubifs_info const*,union ubifs_key const*) ;

__attribute__((used)) static inline int is_hash_key(const struct ubifs_info *c,
         const union ubifs_key *key)
{
 int type = key_type(c, key);

 return type == UBIFS_DENT_KEY || type == UBIFS_XENT_KEY;
}
