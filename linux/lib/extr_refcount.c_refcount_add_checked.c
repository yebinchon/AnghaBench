
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int WARN_ONCE (int,char*) ;
 int refcount_add_not_zero_checked (unsigned int,int *) ;

void refcount_add_checked(unsigned int i, refcount_t *r)
{
 WARN_ONCE(!refcount_add_not_zero_checked(i, r), "refcount_t: addition on 0; use-after-free.\n");
}
