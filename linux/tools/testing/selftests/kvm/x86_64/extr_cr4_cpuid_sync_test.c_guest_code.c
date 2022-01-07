
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int GUEST_ASSERT (int ) ;
 int GUEST_DONE () ;
 int GUEST_SYNC (int ) ;
 int X86_CR4_OSXSAVE ;
 int cr4_cpuid_is_sync () ;
 int get_cr4 () ;
 int set_cr4 (int ) ;

__attribute__((used)) static void guest_code(void)
{
 uint64_t cr4;


 cr4 = get_cr4();
 cr4 |= X86_CR4_OSXSAVE;
 set_cr4(cr4);


 GUEST_ASSERT(cr4_cpuid_is_sync());


 GUEST_SYNC(0);


 GUEST_ASSERT(cr4_cpuid_is_sync());

 GUEST_DONE();
}
