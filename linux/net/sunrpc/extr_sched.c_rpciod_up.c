
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int THIS_MODULE ;
 scalar_t__ try_module_get (int ) ;

int rpciod_up(void)
{
 return try_module_get(THIS_MODULE) ? 0 : -EINVAL;
}
