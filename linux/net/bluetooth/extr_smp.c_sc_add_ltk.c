
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct smp_chan {int enc_key_size; int tk; int ltk; int flags; TYPE_1__* conn; } ;
struct hci_conn {scalar_t__ pending_sec_level; int dst_type; int dst; int hdev; } ;
struct TYPE_2__ {struct hci_conn* hcon; } ;


 scalar_t__ BT_SECURITY_FIPS ;
 int SMP_FLAG_DEBUG_KEY ;
 int SMP_LTK_P256 ;
 int SMP_LTK_P256_DEBUG ;
 int hci_add_ltk (int ,int *,int ,int,int,int ,int ,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void sc_add_ltk(struct smp_chan *smp)
{
 struct hci_conn *hcon = smp->conn->hcon;
 u8 key_type, auth;

 if (test_bit(SMP_FLAG_DEBUG_KEY, &smp->flags))
  key_type = SMP_LTK_P256_DEBUG;
 else
  key_type = SMP_LTK_P256;

 if (hcon->pending_sec_level == BT_SECURITY_FIPS)
  auth = 1;
 else
  auth = 0;

 smp->ltk = hci_add_ltk(hcon->hdev, &hcon->dst, hcon->dst_type,
          key_type, auth, smp->tk, smp->enc_key_size,
          0, 0);
}
