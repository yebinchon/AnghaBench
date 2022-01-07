
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int refcount_t ;


 int refcount_sub_and_test_checked (int,int *) ;

bool refcount_dec_and_test_checked(refcount_t *r)
{
 return refcount_sub_and_test_checked(1, r);
}
