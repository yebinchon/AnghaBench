
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int GUEST_SYNC (int) ;
 scalar_t__ NESTED_TEST_MEM1 ;
 scalar_t__ NESTED_TEST_MEM2 ;
 int vmcall () ;

__attribute__((used)) static void l2_guest_code(void)
{
 *(volatile uint64_t *)NESTED_TEST_MEM1;
 *(volatile uint64_t *)NESTED_TEST_MEM1 = 1;
 GUEST_SYNC(1);
 GUEST_SYNC(0);

 *(volatile uint64_t *)NESTED_TEST_MEM2 = 1;
 GUEST_SYNC(1);
 *(volatile uint64_t *)NESTED_TEST_MEM2 = 1;
 GUEST_SYNC(1);
 GUEST_SYNC(0);


 vmcall();
}
