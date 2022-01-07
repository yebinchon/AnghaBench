
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct smp_dev {int debug_key; int local_oob; int local_rand; int * local_pk; int tfm_cmac; int tfm_ecdh; } ;
struct l2cap_chan {struct smp_dev* data; } ;
struct hci_dev {struct l2cap_chan* smp_data; } ;


 int BT_DBG (char*) ;
 int EOPNOTSUPP ;
 int HCI_USE_DEBUG_KEYS ;
 int SMP_DBG (char*,int *) ;
 scalar_t__ crypto_memneq (int *,int ,int) ;
 int debug_pk ;
 int debug_sk ;
 int generate_ecdh_keys (int ,int *) ;
 int get_random_bytes (int ,int) ;
 scalar_t__ hci_dev_test_flag (struct hci_dev*,int ) ;
 int memcpy (int *,int ,int) ;
 int set_ecdh_privkey (int ,int ) ;
 int smp_f4 (int ,int *,int *,int ,int ,int *) ;

int smp_generate_oob(struct hci_dev *hdev, u8 hash[16], u8 rand[16])
{
 struct l2cap_chan *chan = hdev->smp_data;
 struct smp_dev *smp;
 int err;

 if (!chan || !chan->data)
  return -EOPNOTSUPP;

 smp = chan->data;

 if (hci_dev_test_flag(hdev, HCI_USE_DEBUG_KEYS)) {
  BT_DBG("Using debug keys");
  err = set_ecdh_privkey(smp->tfm_ecdh, debug_sk);
  if (err)
   return err;
  memcpy(smp->local_pk, debug_pk, 64);
  smp->debug_key = 1;
 } else {
  while (1) {

   err = generate_ecdh_keys(smp->tfm_ecdh, smp->local_pk);
   if (err)
    return err;




   if (crypto_memneq(smp->local_pk, debug_pk, 64))
    break;
  }
  smp->debug_key = 0;
 }

 SMP_DBG("OOB Public Key X: %32phN", smp->local_pk);
 SMP_DBG("OOB Public Key Y: %32phN", smp->local_pk + 32);

 get_random_bytes(smp->local_rand, 16);

 err = smp_f4(smp->tfm_cmac, smp->local_pk, smp->local_pk,
       smp->local_rand, 0, hash);
 if (err < 0)
  return err;

 memcpy(rand, smp->local_rand, 16);

 smp->local_oob = 1;

 return 0;
}
