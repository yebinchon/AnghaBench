
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ dev; } ;
struct sja1105_port {TYPE_2__* data; } ;
struct sja1105_meta {int dummy; } ;
struct dsa_port {TYPE_1__* ds; struct sja1105_port* priv; } ;
struct TYPE_4__ {int meta_lock; struct sk_buff* stampable_skb; int state; } ;
struct TYPE_3__ {int dev; } ;


 int SJA1105_HWTS_RX_EN ;
 int SJA1105_META_DMAC ;
 int dev_err_ratelimited (int ,char*,...) ;
 struct dsa_port* dsa_slave_to_port (scalar_t__) ;
 int kfree_skb (struct sk_buff*) ;
 int sja1105_transfer_meta (struct sk_buff*,struct sja1105_meta*) ;
 struct sk_buff* skb_get (struct sk_buff*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static struct sk_buff
*sja1105_rcv_meta_state_machine(struct sk_buff *skb,
    struct sja1105_meta *meta,
    bool is_link_local,
    bool is_meta)
{
 struct sja1105_port *sp;
 struct dsa_port *dp;

 dp = dsa_slave_to_port(skb->dev);
 sp = dp->priv;




 if (is_link_local) {
  if (!test_bit(SJA1105_HWTS_RX_EN, &sp->data->state))

   return skb;

  spin_lock(&sp->data->meta_lock);



  if (sp->data->stampable_skb) {
   dev_err_ratelimited(dp->ds->dev,
         "Expected meta frame, is %12llx "
         "in the DSA master multicast filter?\n",
         SJA1105_META_DMAC);
   kfree_skb(sp->data->stampable_skb);
  }




  sp->data->stampable_skb = skb_get(skb);
  spin_unlock(&sp->data->meta_lock);


  return ((void*)0);







 } else if (is_meta) {
  struct sk_buff *stampable_skb;




  if (!test_bit(SJA1105_HWTS_RX_EN, &sp->data->state))
   return ((void*)0);

  spin_lock(&sp->data->meta_lock);

  stampable_skb = sp->data->stampable_skb;
  sp->data->stampable_skb = ((void*)0);




  if (!stampable_skb) {
   dev_err_ratelimited(dp->ds->dev,
         "Unexpected meta frame\n");
   spin_unlock(&sp->data->meta_lock);
   return ((void*)0);
  }

  if (stampable_skb->dev != skb->dev) {
   dev_err_ratelimited(dp->ds->dev,
         "Meta frame on wrong port\n");
   spin_unlock(&sp->data->meta_lock);
   return ((void*)0);
  }




  kfree_skb(skb);
  skb = stampable_skb;
  sja1105_transfer_meta(skb, meta);

  spin_unlock(&sp->data->meta_lock);
 }

 return skb;
}
