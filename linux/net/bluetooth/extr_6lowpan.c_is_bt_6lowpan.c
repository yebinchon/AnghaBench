
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {scalar_t__ type; } ;


 scalar_t__ LE_LINK ;
 int enable_6lowpan ;

__attribute__((used)) static bool is_bt_6lowpan(struct hci_conn *hcon)
{
 if (hcon->type != LE_LINK)
  return 0;

 if (!enable_6lowpan)
  return 0;

 return 1;
}
