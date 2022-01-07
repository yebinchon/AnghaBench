
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_hashlimit_htable {int dummy; } ;
struct dsthash_ent {int dummy; } ;



__attribute__((used)) static bool select_all(const struct xt_hashlimit_htable *ht,
         const struct dsthash_ent *he)
{
 return 1;
}
