
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int atomic_dec_and_test (int *) ;
 int huge_zero_refcount ;

__attribute__((used)) static void put_huge_zero_page(void)
{




 BUG_ON(atomic_dec_and_test(&huge_zero_refcount));
}
