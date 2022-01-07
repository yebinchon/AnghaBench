
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct policydb_compat_info {int version; } ;


 int ARRAY_SIZE (struct policydb_compat_info*) ;
 struct policydb_compat_info* policydb_compat ;

__attribute__((used)) static struct policydb_compat_info *policydb_lookup_compat(int version)
{
 int i;
 struct policydb_compat_info *info = ((void*)0);

 for (i = 0; i < ARRAY_SIZE(policydb_compat); i++) {
  if (policydb_compat[i].version == version) {
   info = &policydb_compat[i];
   break;
  }
 }
 return info;
}
