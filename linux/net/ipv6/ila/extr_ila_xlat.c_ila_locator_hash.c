
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ila_locator {scalar_t__ v32; } ;


 int __ila_hash_secret_init () ;
 int hashrnd ;
 int jhash_2words (int ,int ,int ) ;

__attribute__((used)) static inline u32 ila_locator_hash(struct ila_locator loc)
{
 u32 *v = (u32 *)loc.v32;

 __ila_hash_secret_init();
 return jhash_2words(v[0], v[1], hashrnd);
}
