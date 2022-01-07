
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct smp_dev {int dummy; } ;
struct l2cap_chan {struct smp_dev* data; } ;
struct hci_dev {struct l2cap_chan* smp_data; } ;
struct TYPE_4__ {int* b; } ;
typedef TYPE_1__ bdaddr_t ;


 int BT_DBG (char*,TYPE_1__*) ;
 int EOPNOTSUPP ;
 int get_random_bytes (int*,int) ;
 int smp_ah (int const*,int*,int*) ;

int smp_generate_rpa(struct hci_dev *hdev, const u8 irk[16], bdaddr_t *rpa)
{
 struct l2cap_chan *chan = hdev->smp_data;
 struct smp_dev *smp;
 int err;

 if (!chan || !chan->data)
  return -EOPNOTSUPP;

 smp = chan->data;

 get_random_bytes(&rpa->b[3], 3);

 rpa->b[5] &= 0x3f;
 rpa->b[5] |= 0x40;

 err = smp_ah(irk, &rpa->b[3], rpa->b);
 if (err < 0)
  return err;

 BT_DBG("RPA %pMR", rpa);

 return 0;
}
