
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int GUEST_SYNC (int ) ;
 int MSR_PLATFORM_INFO ;
 int rdmsr (int ) ;

__attribute__((used)) static void guest_code(void)
{
 uint64_t msr_platform_info;

 for (;;) {
  msr_platform_info = rdmsr(MSR_PLATFORM_INFO);
  GUEST_SYNC(msr_platform_info);
  asm volatile ("inc %r11");
 }
}
