
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int klp_root_kobj ;

__attribute__((used)) static bool klp_initialized(void)
{
 return !!klp_root_kobj;
}
