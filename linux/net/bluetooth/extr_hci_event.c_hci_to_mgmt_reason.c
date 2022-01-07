
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;







 int MGMT_DEV_DISCONN_LOCAL_HOST ;
 int MGMT_DEV_DISCONN_REMOTE ;
 int MGMT_DEV_DISCONN_TIMEOUT ;
 int MGMT_DEV_DISCONN_UNKNOWN ;

__attribute__((used)) static u8 hci_to_mgmt_reason(u8 err)
{
 switch (err) {
 case 132:
  return MGMT_DEV_DISCONN_TIMEOUT;
 case 128:
 case 130:
 case 129:
  return MGMT_DEV_DISCONN_REMOTE;
 case 131:
  return MGMT_DEV_DISCONN_LOCAL_HOST;
 default:
  return MGMT_DEV_DISCONN_UNKNOWN;
 }
}
