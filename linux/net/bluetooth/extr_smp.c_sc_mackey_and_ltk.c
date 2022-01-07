
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct smp_chan {int dhkey; int tfm_cmac; int * prnd; int * rrnd; TYPE_1__* conn; } ;
struct hci_conn {int resp_addr_type; int init_addr_type; int resp_addr; int init_addr; scalar_t__ out; } ;
struct TYPE_2__ {struct hci_conn* hcon; } ;


 int memcpy (int *,int *,int) ;
 int smp_f5 (int ,int ,int *,int *,int *,int *,int *,int *) ;

__attribute__((used)) static int sc_mackey_and_ltk(struct smp_chan *smp, u8 mackey[16], u8 ltk[16])
{
 struct hci_conn *hcon = smp->conn->hcon;
 u8 *na, *nb, a[7], b[7];

 if (hcon->out) {
  na = smp->prnd;
  nb = smp->rrnd;
 } else {
  na = smp->rrnd;
  nb = smp->prnd;
 }

 memcpy(a, &hcon->init_addr, 6);
 memcpy(b, &hcon->resp_addr, 6);
 a[6] = hcon->init_addr_type;
 b[6] = hcon->resp_addr_type;

 return smp_f5(smp->tfm_cmac, smp->dhkey, na, nb, a, b, mackey, ltk);
}
