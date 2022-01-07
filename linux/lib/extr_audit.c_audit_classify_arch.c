
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ audit_is_compat (int) ;

int audit_classify_arch(int arch)
{
 if (audit_is_compat(arch))
  return 1;
 else
  return 0;
}
