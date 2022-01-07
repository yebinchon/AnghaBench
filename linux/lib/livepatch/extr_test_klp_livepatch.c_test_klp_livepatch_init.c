
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int klp_enable_patch (int *) ;
 int patch ;

__attribute__((used)) static int test_klp_livepatch_init(void)
{
 return klp_enable_patch(&patch);
}
