
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct smp_ltk {int enc_size; int val; int rand; int ediv; } ;
struct l2cap_conn {struct hci_conn* hcon; } ;
struct hci_conn {int flags; int enc_key_size; int role; int dst_type; int dst; int hdev; } ;


 int HCI_CONN_ENCRYPT_PEND ;
 int HCI_CONN_STK_ENCRYPT ;
 int clear_bit (int ,int *) ;
 struct smp_ltk* hci_find_ltk (int ,int *,int ,int ) ;
 int hci_le_start_enc (struct hci_conn*,int ,int ,int ,int ) ;
 scalar_t__ smp_ltk_sec_level (struct smp_ltk*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static bool smp_ltk_encrypt(struct l2cap_conn *conn, u8 sec_level)
{
 struct smp_ltk *key;
 struct hci_conn *hcon = conn->hcon;

 key = hci_find_ltk(hcon->hdev, &hcon->dst, hcon->dst_type, hcon->role);
 if (!key)
  return 0;

 if (smp_ltk_sec_level(key) < sec_level)
  return 0;

 if (test_and_set_bit(HCI_CONN_ENCRYPT_PEND, &hcon->flags))
  return 1;

 hci_le_start_enc(hcon, key->ediv, key->rand, key->val, key->enc_size);
 hcon->enc_key_size = key->enc_size;


 clear_bit(HCI_CONN_STK_ENCRYPT, &hcon->flags);

 return 1;
}
