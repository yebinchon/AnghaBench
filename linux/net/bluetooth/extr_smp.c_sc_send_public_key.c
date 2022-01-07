
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct smp_dev {scalar_t__ debug_key; int local_rand; int local_pk; } ;
struct smp_chan {scalar_t__ local_pk; TYPE_2__* conn; int tfm_ecdh; int flags; scalar_t__ lr; } ;
struct l2cap_chan {struct smp_dev* data; } ;
struct hci_dev {struct l2cap_chan* smp_data; } ;
struct TYPE_4__ {TYPE_1__* hcon; } ;
struct TYPE_3__ {struct hci_dev* hdev; } ;


 int BT_DBG (char*) ;
 int HCI_USE_DEBUG_KEYS ;
 int SMP_CMD_PUBLIC_KEY ;
 int SMP_DBG (char*,scalar_t__) ;
 int SMP_FLAG_DEBUG_KEY ;
 int SMP_FLAG_LOCAL_OOB ;
 int SMP_UNSPECIFIED ;
 scalar_t__ crypto_memneq (scalar_t__,int ,int) ;
 int debug_pk ;
 int debug_sk ;
 scalar_t__ generate_ecdh_keys (int ,scalar_t__) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int memcpy (scalar_t__,int ,int) ;
 int set_bit (int ,int *) ;
 scalar_t__ set_ecdh_privkey (int ,int ) ;
 int smp_send_cmd (TYPE_2__*,int ,int,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static u8 sc_send_public_key(struct smp_chan *smp)
{
 struct hci_dev *hdev = smp->conn->hcon->hdev;

 BT_DBG("");

 if (test_bit(SMP_FLAG_LOCAL_OOB, &smp->flags)) {
  struct l2cap_chan *chan = hdev->smp_data;
  struct smp_dev *smp_dev;

  if (!chan || !chan->data)
   return SMP_UNSPECIFIED;

  smp_dev = chan->data;

  memcpy(smp->local_pk, smp_dev->local_pk, 64);
  memcpy(smp->lr, smp_dev->local_rand, 16);

  if (smp_dev->debug_key)
   set_bit(SMP_FLAG_DEBUG_KEY, &smp->flags);

  goto done;
 }

 if (hci_dev_test_flag(hdev, HCI_USE_DEBUG_KEYS)) {
  BT_DBG("Using debug keys");
  if (set_ecdh_privkey(smp->tfm_ecdh, debug_sk))
   return SMP_UNSPECIFIED;
  memcpy(smp->local_pk, debug_pk, 64);
  set_bit(SMP_FLAG_DEBUG_KEY, &smp->flags);
 } else {
  while (1) {

   if (generate_ecdh_keys(smp->tfm_ecdh, smp->local_pk))
    return SMP_UNSPECIFIED;




   if (crypto_memneq(smp->local_pk, debug_pk, 64))
    break;
  }
 }

done:
 SMP_DBG("Local Public Key X: %32phN", smp->local_pk);
 SMP_DBG("Local Public Key Y: %32phN", smp->local_pk + 32);

 smp_send_cmd(smp->conn, SMP_CMD_PUBLIC_KEY, 64, smp->local_pk);

 return 0;
}
