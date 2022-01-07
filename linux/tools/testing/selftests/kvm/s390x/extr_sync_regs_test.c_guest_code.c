
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int GUEST_SYNC (int ) ;

__attribute__((used)) static void guest_code(void)
{
 register u64 stage asm("11") = 0;

 for (;;) {
  GUEST_SYNC(0);
  asm volatile ("ahi %0,1" : : "r"(stage));
 }
}
