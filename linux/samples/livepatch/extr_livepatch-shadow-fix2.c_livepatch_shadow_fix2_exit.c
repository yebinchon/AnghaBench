
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SV_COUNTER ;
 int klp_shadow_free_all (int ,int *) ;

__attribute__((used)) static void livepatch_shadow_fix2_exit(void)
{

 klp_shadow_free_all(SV_COUNTER, ((void*)0));
}
