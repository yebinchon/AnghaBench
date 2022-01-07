
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lec_vcc_priv {int old_pop; scalar_t__ xoff; } ;
struct lec_priv {int lec_arp_lock; struct atm_vcc* mcast_vcc; } ;
struct lec_arp_table {int old_push; struct atm_vcc* vcc; int flags; int status; int atm_addr; } ;
struct TYPE_3__ {int prv; } ;
struct TYPE_4__ {TYPE_1__ sas_addr; } ;
struct atm_vcc {int push; TYPE_2__ remote; int pop; struct lec_vcc_priv* user_back; } ;


 int ATM_ESA_LEN ;
 int ENOMEM ;
 int ESI_FORWARD_DIRECT ;
 int GFP_KERNEL ;
 int LEC_PERMANENT_FLAG ;
 int kfree (struct lec_vcc_priv*) ;
 struct lec_vcc_priv* kmalloc (int,int ) ;
 int lec_arp_add (struct lec_priv*,struct lec_arp_table*) ;
 int lec_pop ;
 int lec_push ;
 struct lec_arp_table* make_entry (struct lec_priv*,unsigned char*) ;
 int memcpy (int ,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int lec_mcast_make(struct lec_priv *priv, struct atm_vcc *vcc)
{
 unsigned long flags;
 unsigned char mac_addr[] = {
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff
 };
 struct lec_arp_table *to_add;
 struct lec_vcc_priv *vpriv;
 int err = 0;

 vpriv = kmalloc(sizeof(struct lec_vcc_priv), GFP_KERNEL);
 if (!vpriv)
  return -ENOMEM;
 vpriv->xoff = 0;
 vpriv->old_pop = vcc->pop;
 vcc->user_back = vpriv;
 vcc->pop = lec_pop;
 spin_lock_irqsave(&priv->lec_arp_lock, flags);
 to_add = make_entry(priv, mac_addr);
 if (!to_add) {
  vcc->pop = vpriv->old_pop;
  kfree(vpriv);
  err = -ENOMEM;
  goto out;
 }
 memcpy(to_add->atm_addr, vcc->remote.sas_addr.prv, ATM_ESA_LEN);
 to_add->status = ESI_FORWARD_DIRECT;
 to_add->flags |= LEC_PERMANENT_FLAG;
 to_add->vcc = vcc;
 to_add->old_push = vcc->push;
 vcc->push = lec_push;
 priv->mcast_vcc = vcc;
 lec_arp_add(priv, to_add);
out:
 spin_unlock_irqrestore(&priv->lec_arp_lock, flags);
 return err;
}
