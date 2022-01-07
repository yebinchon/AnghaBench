
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SYS_MODULE ;
 int EPERM ;
 int capable (int ) ;
 scalar_t__ modules_disabled ;

__attribute__((used)) static int may_init_module(void)
{
 if (!capable(CAP_SYS_MODULE) || modules_disabled)
  return -EPERM;

 return 0;
}
