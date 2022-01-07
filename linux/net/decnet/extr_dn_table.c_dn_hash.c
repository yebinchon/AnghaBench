
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct dn_zone {int dz_order; } ;
struct TYPE_3__ {int datum; } ;
typedef TYPE_1__ dn_fib_key_t ;
typedef int dn_fib_idx_t ;


 int DZ_HASHMASK (struct dn_zone*) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static inline dn_fib_idx_t dn_hash(dn_fib_key_t key, struct dn_zone *dz)
{
 u16 h = le16_to_cpu(key.datum)>>(16 - dz->dz_order);
 h ^= (h >> 10);
 h ^= (h >> 6);
 h &= DZ_HASHMASK(dz);
 return *(dn_fib_idx_t *)&h;
}
