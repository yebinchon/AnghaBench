
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct smp_chan {scalar_t__ enc_key_size; } ;
struct l2cap_conn {TYPE_1__* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_dev {scalar_t__ le_max_key_size; } ;
typedef scalar_t__ __u8 ;
struct TYPE_2__ {struct hci_dev* hdev; } ;


 int SMP_ENC_KEY_SIZE ;
 scalar_t__ SMP_MIN_ENC_KEY_SIZE ;

__attribute__((used)) static u8 check_enc_key_size(struct l2cap_conn *conn, __u8 max_key_size)
{
 struct l2cap_chan *chan = conn->smp;
 struct hci_dev *hdev = conn->hcon->hdev;
 struct smp_chan *smp = chan->data;

 if (max_key_size > hdev->le_max_key_size ||
     max_key_size < SMP_MIN_ENC_KEY_SIZE)
  return SMP_ENC_KEY_SIZE;

 smp->enc_key_size = max_key_size;

 return 0;
}
