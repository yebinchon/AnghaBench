
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BT_SECURITY_FIPS ;
 int BT_SECURITY_HIGH ;
 int BT_SECURITY_MEDIUM ;
 int SMP_AUTH_MITM ;
 int SMP_AUTH_SC ;

__attribute__((used)) static u8 authreq_to_seclevel(u8 authreq)
{
 if (authreq & SMP_AUTH_MITM) {
  if (authreq & SMP_AUTH_SC)
   return BT_SECURITY_FIPS;
  else
   return BT_SECURITY_HIGH;
 } else {
  return BT_SECURITY_MEDIUM;
 }
}
