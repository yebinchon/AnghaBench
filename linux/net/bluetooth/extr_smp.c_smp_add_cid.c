
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct smp_dev {int local_oob; struct crypto_shash* tfm_ecdh; struct crypto_shash* tfm_cmac; } ;
struct l2cap_chan {int nesting; int * ops; int imtu; int mode; int state; int src_type; int src; struct smp_dev* data; } ;
struct hci_dev {int bdaddr; } ;
struct crypto_shash {int dummy; } ;
typedef struct crypto_shash crypto_kpp ;


 scalar_t__ ADDR_LE_DEV_PUBLIC ;
 int BDADDR_BREDR ;
 int BDADDR_LE_PUBLIC ;
 int BDADDR_LE_RANDOM ;
 int BT_ERR (char*) ;
 int BT_LISTEN ;
 int CRYPTO_ALG_INTERNAL ;
 int ENOMEM ;
 struct l2cap_chan* ERR_CAST (struct crypto_shash*) ;
 struct l2cap_chan* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct crypto_shash*) ;
 int L2CAP_CID_SMP ;
 int L2CAP_CID_SMP_BREDR ;
 int L2CAP_DEFAULT_MTU ;
 int L2CAP_MODE_BASIC ;
 int L2CAP_NESTING_PARENT ;
 int atomic_set (int *,int ) ;
 int bacpy (int *,int *) ;
 struct crypto_shash* crypto_alloc_kpp (char*,int ,int ) ;
 struct crypto_shash* crypto_alloc_shash (char*,int ,int ) ;
 int crypto_free_kpp (struct crypto_shash*) ;
 int crypto_free_shash (struct crypto_shash*) ;
 int hci_copy_identity_address (struct hci_dev*,int *,scalar_t__*) ;
 struct smp_dev* kzalloc (int,int ) ;
 int kzfree (struct smp_dev*) ;
 int l2cap_add_scid (struct l2cap_chan*,int ) ;
 struct l2cap_chan* l2cap_chan_create () ;
 int l2cap_chan_set_defaults (struct l2cap_chan*) ;
 int smp_root_chan_ops ;

__attribute__((used)) static struct l2cap_chan *smp_add_cid(struct hci_dev *hdev, u16 cid)
{
 struct l2cap_chan *chan;
 struct smp_dev *smp;
 struct crypto_shash *tfm_cmac;
 struct crypto_kpp *tfm_ecdh;

 if (cid == L2CAP_CID_SMP_BREDR) {
  smp = ((void*)0);
  goto create_chan;
 }

 smp = kzalloc(sizeof(*smp), GFP_KERNEL);
 if (!smp)
  return ERR_PTR(-ENOMEM);

 tfm_cmac = crypto_alloc_shash("cmac(aes)", 0, 0);
 if (IS_ERR(tfm_cmac)) {
  BT_ERR("Unable to create CMAC crypto context");
  kzfree(smp);
  return ERR_CAST(tfm_cmac);
 }

 tfm_ecdh = crypto_alloc_kpp("ecdh", CRYPTO_ALG_INTERNAL, 0);
 if (IS_ERR(tfm_ecdh)) {
  BT_ERR("Unable to create ECDH crypto context");
  crypto_free_shash(tfm_cmac);
  kzfree(smp);
  return ERR_CAST(tfm_ecdh);
 }

 smp->local_oob = 0;
 smp->tfm_cmac = tfm_cmac;
 smp->tfm_ecdh = tfm_ecdh;

create_chan:
 chan = l2cap_chan_create();
 if (!chan) {
  if (smp) {
   crypto_free_shash(smp->tfm_cmac);
   crypto_free_kpp(smp->tfm_ecdh);
   kzfree(smp);
  }
  return ERR_PTR(-ENOMEM);
 }

 chan->data = smp;

 l2cap_add_scid(chan, cid);

 l2cap_chan_set_defaults(chan);

 if (cid == L2CAP_CID_SMP) {
  u8 bdaddr_type;

  hci_copy_identity_address(hdev, &chan->src, &bdaddr_type);

  if (bdaddr_type == ADDR_LE_DEV_PUBLIC)
   chan->src_type = BDADDR_LE_PUBLIC;
  else
   chan->src_type = BDADDR_LE_RANDOM;
 } else {
  bacpy(&chan->src, &hdev->bdaddr);
  chan->src_type = BDADDR_BREDR;
 }

 chan->state = BT_LISTEN;
 chan->mode = L2CAP_MODE_BASIC;
 chan->imtu = L2CAP_DEFAULT_MTU;
 chan->ops = &smp_root_chan_ops;


 atomic_set(&chan->nesting, L2CAP_NESTING_PARENT);

 return chan;
}
