
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int **) ;
 int EINVAL ;
 int pr_debug (char*,char*) ;
 scalar_t__ strncmp (int *,char*,size_t) ;
 int ** wks ;

__attribute__((used)) static int nfc_llcp_wks_sap(char *service_name, size_t service_name_len)
{
 int sap, num_wks;

 pr_debug("%s\n", service_name);

 if (service_name == ((void*)0))
  return -EINVAL;

 num_wks = ARRAY_SIZE(wks);

 for (sap = 0; sap < num_wks; sap++) {
  if (wks[sap] == ((void*)0))
   continue;

  if (strncmp(wks[sap], service_name, service_name_len) == 0)
   return sap;
 }

 return -EINVAL;
}
