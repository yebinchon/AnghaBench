
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int WARN_ONCE (int,char*) ;
 int refcount_inc_not_zero_checked (int *) ;

void refcount_inc_checked(refcount_t *r)
{
 WARN_ONCE(!refcount_inc_not_zero_checked(r), "refcount_t: increment on 0; use-after-free.\n");
}
