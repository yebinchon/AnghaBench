
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aa_profile {int audit; } ;


 scalar_t__ AUDIT_NORMAL ;
 scalar_t__ aa_g_audit ;

__attribute__((used)) static inline int AUDIT_MODE(struct aa_profile *profile)
{
 if (aa_g_audit != AUDIT_NORMAL)
  return aa_g_audit;

 return profile->audit;
}
