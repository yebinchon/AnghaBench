
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ AUDIT_FAIL_PANIC ;
 scalar_t__ AUDIT_FAIL_PRINTK ;
 scalar_t__ AUDIT_FAIL_SILENT ;
 int EINVAL ;
 int audit_do_config_change (char*,int *,scalar_t__) ;
 int audit_failure ;

__attribute__((used)) static int audit_set_failure(u32 state)
{
 if (state != AUDIT_FAIL_SILENT
     && state != AUDIT_FAIL_PRINTK
     && state != AUDIT_FAIL_PANIC)
  return -EINVAL;

 return audit_do_config_change("audit_failure", &audit_failure, state);
}
