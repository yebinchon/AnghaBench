
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int WARN_ONCE (int ,char*) ;
 int refcount_dec_and_test_checked (int *) ;

void refcount_dec_checked(refcount_t *r)
{
 WARN_ONCE(refcount_dec_and_test_checked(r), "refcount_t: decrement hit 0; leaking memory.\n");
}
