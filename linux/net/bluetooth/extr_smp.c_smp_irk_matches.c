
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct smp_dev {int dummy; } ;
struct l2cap_chan {struct smp_dev* data; } ;
struct hci_dev {struct l2cap_chan* smp_data; } ;
struct TYPE_4__ {int * b; } ;
typedef TYPE_1__ bdaddr_t ;


 int BT_DBG (char*,TYPE_1__ const*,int,int const*) ;
 int crypto_memneq (int *,int *,int) ;
 int smp_ah (int const*,int *,int *) ;

bool smp_irk_matches(struct hci_dev *hdev, const u8 irk[16],
       const bdaddr_t *bdaddr)
{
 struct l2cap_chan *chan = hdev->smp_data;
 struct smp_dev *smp;
 u8 hash[3];
 int err;

 if (!chan || !chan->data)
  return 0;

 smp = chan->data;

 BT_DBG("RPA %pMR IRK %*phN", bdaddr, 16, irk);

 err = smp_ah(irk, &bdaddr->b[3], hash);
 if (err)
  return 0;

 return !crypto_memneq(bdaddr->b, hash, 3);
}
