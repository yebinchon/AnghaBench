
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u8 ;





 int SMP_AUTH_BONDING ;
 int SMP_AUTH_MITM ;
 int SMP_AUTH_NONE ;

__attribute__((used)) static __u8 seclevel_to_authreq(__u8 sec_level)
{
 switch (sec_level) {
 case 130:
 case 129:
  return SMP_AUTH_MITM | SMP_AUTH_BONDING;
 case 128:
  return SMP_AUTH_BONDING;
 default:
  return SMP_AUTH_NONE;
 }
}
