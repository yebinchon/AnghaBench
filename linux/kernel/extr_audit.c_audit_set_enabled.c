
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ AUDIT_LOCKED ;
 int EINVAL ;
 int audit_do_config_change (char*,int *,scalar_t__) ;
 int audit_enabled ;
 int audit_ever_enabled ;

__attribute__((used)) static int audit_set_enabled(u32 state)
{
 int rc;
 if (state > AUDIT_LOCKED)
  return -EINVAL;

 rc = audit_do_config_change("audit_enabled", &audit_enabled, state);
 if (!rc)
  audit_ever_enabled |= !!state;

 return rc;
}
