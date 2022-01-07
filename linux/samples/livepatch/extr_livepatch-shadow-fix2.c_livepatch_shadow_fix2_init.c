
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int klp_enable_patch (int *) ;
 int patch ;

__attribute__((used)) static int livepatch_shadow_fix2_init(void)
{
 return klp_enable_patch(&patch);
}
