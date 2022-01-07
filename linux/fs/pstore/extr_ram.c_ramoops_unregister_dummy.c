
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * dummy ;
 int platform_device_unregister (int *) ;

__attribute__((used)) static inline void ramoops_unregister_dummy(void)
{
 platform_device_unregister(dummy);
 dummy = ((void*)0);
}
