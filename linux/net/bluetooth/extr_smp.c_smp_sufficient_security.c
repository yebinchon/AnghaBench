
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct hci_conn {scalar_t__ sec_level; int role; int dst_type; int dst; int hdev; int flags; } ;
typedef enum smp_key_pref { ____Placeholder_smp_key_pref } smp_key_pref ;


 scalar_t__ BT_SECURITY_LOW ;
 int HCI_CONN_STK_ENCRYPT ;
 int SMP_USE_LTK ;
 scalar_t__ hci_find_ltk (int ,int *,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

bool smp_sufficient_security(struct hci_conn *hcon, u8 sec_level,
        enum smp_key_pref key_pref)
{
 if (sec_level == BT_SECURITY_LOW)
  return 1;







 if (key_pref == SMP_USE_LTK &&
     test_bit(HCI_CONN_STK_ENCRYPT, &hcon->flags) &&
     hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type, hcon->role))
  return 0;

 if (hcon->sec_level >= sec_level)
  return 1;

 return 0;
}
