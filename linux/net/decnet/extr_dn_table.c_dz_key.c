
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dn_zone {int dummy; } ;
struct TYPE_3__ {int datum; } ;
typedef TYPE_1__ dn_fib_key_t ;
typedef int __le16 ;


 int DZ_MASK (struct dn_zone*) ;

__attribute__((used)) static inline dn_fib_key_t dz_key(__le16 dst, struct dn_zone *dz)
{
 dn_fib_key_t k;
 k.datum = dst & DZ_MASK(dz);
 return k;
}
