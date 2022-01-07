
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mm; } ;
union futex_key {TYPE_1__ private; } ;


 int mmgrab (int ) ;
 int smp_mb__after_atomic () ;

__attribute__((used)) static inline void futex_get_mm(union futex_key *key)
{
 mmgrab(key->private.mm);





 smp_mb__after_atomic();
}
