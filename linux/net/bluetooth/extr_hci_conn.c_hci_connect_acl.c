
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ state; void* auth_type; void* pending_sec_level; int sec_level; } ;
typedef int bdaddr_t ;


 int ACL_LINK ;
 scalar_t__ BT_CLOSED ;
 scalar_t__ BT_OPEN ;
 int BT_SECURITY_LOW ;
 int ECONNREFUSED ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct hci_conn* ERR_PTR (int ) ;
 int HCI_BREDR_ENABLED ;
 int HCI_ROLE_MASTER ;
 int hci_acl_create_connection (struct hci_conn*) ;
 struct hci_conn* hci_conn_add (struct hci_dev*,int ,int *,int ) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_dev_test_flag (struct hci_dev*,int ) ;
 scalar_t__ lmp_bredr_capable (struct hci_dev*) ;

struct hci_conn *hci_connect_acl(struct hci_dev *hdev, bdaddr_t *dst,
     u8 sec_level, u8 auth_type)
{
 struct hci_conn *acl;

 if (!hci_dev_test_flag(hdev, HCI_BREDR_ENABLED)) {
  if (lmp_bredr_capable(hdev))
   return ERR_PTR(-ECONNREFUSED);

  return ERR_PTR(-EOPNOTSUPP);
 }

 acl = hci_conn_hash_lookup_ba(hdev, ACL_LINK, dst);
 if (!acl) {
  acl = hci_conn_add(hdev, ACL_LINK, dst, HCI_ROLE_MASTER);
  if (!acl)
   return ERR_PTR(-ENOMEM);
 }

 hci_conn_hold(acl);

 if (acl->state == BT_OPEN || acl->state == BT_CLOSED) {
  acl->sec_level = BT_SECURITY_LOW;
  acl->pending_sec_level = sec_level;
  acl->auth_type = auth_type;
  hci_acl_create_connection(acl);
 }

 return acl;
}
