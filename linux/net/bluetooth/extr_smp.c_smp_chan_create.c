
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smp_chan {int tfm_cmac; int security_timer; struct l2cap_conn* conn; int tfm_ecdh; } ;
struct l2cap_conn {int hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;


 int BT_ERR (char*) ;
 int CRYPTO_ALG_INTERNAL ;
 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int SMP_ALLOW_CMD (struct smp_chan*,int ) ;
 int SMP_CMD_PAIRING_FAIL ;
 int crypto_alloc_kpp (char*,int ,int ) ;
 int crypto_alloc_shash (char*,int ,int ) ;
 int crypto_free_shash (int ) ;
 int hci_conn_hold (int ) ;
 struct smp_chan* kzalloc (int,int ) ;
 int kzfree (struct smp_chan*) ;
 int smp_timeout ;

__attribute__((used)) static struct smp_chan *smp_chan_create(struct l2cap_conn *conn)
{
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp;

 smp = kzalloc(sizeof(*smp), GFP_ATOMIC);
 if (!smp)
  return ((void*)0);

 smp->tfm_cmac = crypto_alloc_shash("cmac(aes)", 0, 0);
 if (IS_ERR(smp->tfm_cmac)) {
  BT_ERR("Unable to create CMAC crypto context");
  goto zfree_smp;
 }

 smp->tfm_ecdh = crypto_alloc_kpp("ecdh", CRYPTO_ALG_INTERNAL, 0);
 if (IS_ERR(smp->tfm_ecdh)) {
  BT_ERR("Unable to create ECDH crypto context");
  goto free_shash;
 }

 smp->conn = conn;
 chan->data = smp;

 SMP_ALLOW_CMD(smp, SMP_CMD_PAIRING_FAIL);

 INIT_DELAYED_WORK(&smp->security_timer, smp_timeout);

 hci_conn_hold(conn->hcon);

 return smp;

free_shash:
 crypto_free_shash(smp->tfm_cmac);
zfree_smp:
 kzfree(smp);
 return ((void*)0);
}
