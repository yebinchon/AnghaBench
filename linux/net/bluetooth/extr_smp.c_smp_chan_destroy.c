
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smp_chan {TYPE_1__* remote_irk; TYPE_1__* slave_ltk; TYPE_1__* ltk; int tfm_ecdh; int tfm_cmac; struct smp_chan* link_key; struct smp_chan* slave_csrk; struct smp_chan* csrk; int flags; int security_timer; } ;
struct l2cap_conn {struct hci_conn* hcon; struct l2cap_chan* smp; } ;
struct l2cap_chan {struct smp_chan* data; } ;
struct hci_conn {int hdev; } ;
struct TYPE_2__ {scalar_t__ type; int list; } ;


 int BUG_ON (int) ;
 int HCI_KEEP_DEBUG_KEYS ;
 int SMP_FLAG_COMPLETE ;
 scalar_t__ SMP_LTK_P256_DEBUG ;
 int cancel_delayed_work_sync (int *) ;
 int crypto_free_kpp (int ) ;
 int crypto_free_shash (int ) ;
 int hci_conn_drop (struct hci_conn*) ;
 int hci_dev_test_flag (int ,int ) ;
 int kfree_rcu (TYPE_1__*,int ) ;
 int kzfree (struct smp_chan*) ;
 int list_del_rcu (int *) ;
 int mgmt_smp_complete (struct hci_conn*,int) ;
 int rcu ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void smp_chan_destroy(struct l2cap_conn *conn)
{
 struct l2cap_chan *chan = conn->smp;
 struct smp_chan *smp = chan->data;
 struct hci_conn *hcon = conn->hcon;
 bool complete;

 BUG_ON(!smp);

 cancel_delayed_work_sync(&smp->security_timer);

 complete = test_bit(SMP_FLAG_COMPLETE, &smp->flags);
 mgmt_smp_complete(hcon, complete);

 kzfree(smp->csrk);
 kzfree(smp->slave_csrk);
 kzfree(smp->link_key);

 crypto_free_shash(smp->tfm_cmac);
 crypto_free_kpp(smp->tfm_ecdh);




 if (smp->ltk && smp->ltk->type == SMP_LTK_P256_DEBUG &&
     !hci_dev_test_flag(hcon->hdev, HCI_KEEP_DEBUG_KEYS)) {
  list_del_rcu(&smp->ltk->list);
  kfree_rcu(smp->ltk, rcu);
  smp->ltk = ((void*)0);
 }


 if (!complete) {
  if (smp->ltk) {
   list_del_rcu(&smp->ltk->list);
   kfree_rcu(smp->ltk, rcu);
  }

  if (smp->slave_ltk) {
   list_del_rcu(&smp->slave_ltk->list);
   kfree_rcu(smp->slave_ltk, rcu);
  }

  if (smp->remote_irk) {
   list_del_rcu(&smp->remote_irk->list);
   kfree_rcu(smp->remote_irk, rcu);
  }
 }

 chan->data = ((void*)0);
 kzfree(smp);
 hci_conn_drop(hcon);
}
