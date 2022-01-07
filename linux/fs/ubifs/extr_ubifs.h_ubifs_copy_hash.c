
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ubifs_info {int hash_len; } ;


 int memcpy (int *,int const*,int ) ;
 scalar_t__ ubifs_authenticated (struct ubifs_info const*) ;

__attribute__((used)) static inline void ubifs_copy_hash(const struct ubifs_info *c, const u8 *from,
       u8 *to)
{
 if (ubifs_authenticated(c))
  memcpy(to, from, c->hash_len);
}
