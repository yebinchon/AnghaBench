
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EOPNOTSUPP ;
 int ETIME ;




int nfc_hci_result_to_errno(u8 result)
{
 switch (result) {
 case 128:
  return 0;
 case 130:
  return -EOPNOTSUPP;
 case 129:
  return -ETIME;
 default:
  return -1;
 }
}
