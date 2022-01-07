
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_dev {int tfm_ecdh; int tfm_cmac; } ;
struct l2cap_chan {struct smp_dev* data; } ;


 int BT_DBG (char*,struct l2cap_chan*) ;
 int crypto_free_kpp (int ) ;
 int crypto_free_shash (int ) ;
 int kzfree (struct smp_dev*) ;
 int l2cap_chan_put (struct l2cap_chan*) ;

__attribute__((used)) static void smp_del_chan(struct l2cap_chan *chan)
{
 struct smp_dev *smp;

 BT_DBG("chan %p", chan);

 smp = chan->data;
 if (smp) {
  chan->data = ((void*)0);
  crypto_free_shash(smp->tfm_cmac);
  crypto_free_kpp(smp->tfm_ecdh);
  kzfree(smp);
 }

 l2cap_chan_put(chan);
}
