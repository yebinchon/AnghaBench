
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int refs; } ;
typedef TYPE_1__ refcount_t ;


 int atomic_try_cmpxchg_release (int *,int*,int ) ;

bool refcount_dec_if_one(refcount_t *r)
{
 int val = 1;

 return atomic_try_cmpxchg_release(&r->refs, &val, 0);
}
