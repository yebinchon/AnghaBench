
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int THIS_MODULE ;
 int try_module_get (int ) ;

int
ip_vs_use_count_inc(void)
{
 return try_module_get(THIS_MODULE);
}
