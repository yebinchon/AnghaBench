
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kuid_t ;


 int AUDIT_FEATURE_LOGINUID_IMMUTABLE ;
 int AUDIT_FEATURE_ONLY_UNSET_LOGINUID ;
 int CAP_AUDIT_CONTROL ;
 int EPERM ;
 int audit_loginuid_set (int ) ;
 int capable (int ) ;
 int current ;
 scalar_t__ is_audit_feature_set (int ) ;
 scalar_t__ uid_valid (int ) ;

__attribute__((used)) static int audit_set_loginuid_perm(kuid_t loginuid)
{

 if (!audit_loginuid_set(current))
  return 0;

 if (is_audit_feature_set(AUDIT_FEATURE_LOGINUID_IMMUTABLE))
  return -EPERM;

 if (!capable(CAP_AUDIT_CONTROL))
  return -EPERM;

 if (is_audit_feature_set(AUDIT_FEATURE_ONLY_UNSET_LOGINUID)
     && uid_valid(loginuid))
  return -EPERM;
 return 0;
}
