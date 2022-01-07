
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int shadow_leak_ctor(void *obj, void *shadow_data, void *ctor_data)
{
 void **shadow_leak = shadow_data;
 void *leak = ctor_data;

 *shadow_leak = leak;
 return 0;
}
