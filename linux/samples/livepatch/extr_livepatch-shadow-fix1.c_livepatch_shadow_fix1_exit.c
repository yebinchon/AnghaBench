
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SV_LEAK ;
 int klp_shadow_free_all (int ,int ) ;
 int livepatch_fix1_dummy_leak_dtor ;

__attribute__((used)) static void livepatch_shadow_fix1_exit(void)
{

 klp_shadow_free_all(SV_LEAK, livepatch_fix1_dummy_leak_dtor);
}
