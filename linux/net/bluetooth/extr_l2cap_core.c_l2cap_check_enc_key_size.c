
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_conn {scalar_t__ enc_key_size; TYPE_1__* hdev; int flags; } ;
struct TYPE_2__ {scalar_t__ min_enc_key_size; } ;


 int HCI_CONN_ENCRYPT ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool l2cap_check_enc_key_size(struct hci_conn *hcon)
{
 return (!test_bit(HCI_CONN_ENCRYPT, &hcon->flags) ||
  hcon->enc_key_size >= hcon->hdev->min_enc_key_size);
}
