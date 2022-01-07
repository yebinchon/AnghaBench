
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ datum; } ;
typedef TYPE_1__ dn_fib_key_t ;



__attribute__((used)) static inline int dn_key_eq(dn_fib_key_t a, dn_fib_key_t b)
{
 return a.datum == b.datum;
}
