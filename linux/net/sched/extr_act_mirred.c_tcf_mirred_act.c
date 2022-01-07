
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_result {int ingress; int qstats; } ;
struct TYPE_2__ {int cpu_qstats; int cpu_bstats; } ;
struct tcf_mirred {TYPE_1__ common; int tcfm_dev; int tcf_action; int tcfm_eaction; int tcfm_mac_header_xmit; int tcf_tm; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int tc_redirected; scalar_t__ tstamp; scalar_t__ tc_from_ingress; scalar_t__ tc_at_ingress; struct net_device* dev; int skb_iif; int mac_len; } ;
struct net_device {int flags; int ifindex; int name; } ;


 int GFP_ATOMIC ;
 int IFF_UP ;
 unsigned int MIRRED_RECURSION_LIMIT ;
 int READ_ONCE (int ) ;
 int TC_ACT_CONSUMED ;
 int TC_ACT_SHOT ;
 int __this_cpu_dec (int ) ;
 unsigned int __this_cpu_inc_return (int ) ;
 int bstats_cpu_update (int ,struct sk_buff*) ;
 int dev_queue_xmit (struct sk_buff*) ;
 int mirred_rec_level ;
 int net_notice_ratelimited (char*,int ) ;
 int net_warn_ratelimited (char*,int ) ;
 int netdev_name (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int pr_notice_once (char*) ;
 int qstats_overlimit_inc (int ) ;
 struct net_device* rcu_dereference_bh (int ) ;
 int skb_at_tc_ingress (struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 int skb_push_rcsum (struct sk_buff*,int ) ;
 int skb_tc_reinsert (struct sk_buff*,struct tcf_result*) ;
 int tcf_lastuse_update (int *) ;
 int tcf_mirred_act_wants_ingress (int) ;
 scalar_t__ tcf_mirred_can_reinsert (int) ;
 int tcf_mirred_is_act_redirect (int) ;
 int this_cpu_ptr (int ) ;
 struct tcf_mirred* to_mirred (struct tc_action const*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcf_mirred_act(struct sk_buff *skb, const struct tc_action *a,
     struct tcf_result *res)
{
 struct tcf_mirred *m = to_mirred(a);
 struct sk_buff *skb2 = skb;
 bool m_mac_header_xmit;
 struct net_device *dev;
 unsigned int rec_level;
 int retval, err = 0;
 bool use_reinsert;
 bool want_ingress;
 bool is_redirect;
 int m_eaction;
 int mac_len;

 rec_level = __this_cpu_inc_return(mirred_rec_level);
 if (unlikely(rec_level > MIRRED_RECURSION_LIMIT)) {
  net_warn_ratelimited("Packet exceeded mirred recursion limit on dev %s\n",
         netdev_name(skb->dev));
  __this_cpu_dec(mirred_rec_level);
  return TC_ACT_SHOT;
 }

 tcf_lastuse_update(&m->tcf_tm);
 bstats_cpu_update(this_cpu_ptr(m->common.cpu_bstats), skb);

 m_mac_header_xmit = READ_ONCE(m->tcfm_mac_header_xmit);
 m_eaction = READ_ONCE(m->tcfm_eaction);
 retval = READ_ONCE(m->tcf_action);
 dev = rcu_dereference_bh(m->tcfm_dev);
 if (unlikely(!dev)) {
  pr_notice_once("tc mirred: target device is gone\n");
  goto out;
 }

 if (unlikely(!(dev->flags & IFF_UP))) {
  net_notice_ratelimited("tc mirred to Houston: device %s is down\n",
           dev->name);
  goto out;
 }





 is_redirect = tcf_mirred_is_act_redirect(m_eaction);
 use_reinsert = skb_at_tc_ingress(skb) && is_redirect &&
         tcf_mirred_can_reinsert(retval);
 if (!use_reinsert) {
  skb2 = skb_clone(skb, GFP_ATOMIC);
  if (!skb2)
   goto out;
 }





 want_ingress = tcf_mirred_act_wants_ingress(m_eaction);
 if (skb_at_tc_ingress(skb) != want_ingress && m_mac_header_xmit) {
  if (!skb_at_tc_ingress(skb)) {

   mac_len = skb_network_header(skb) - skb_mac_header(skb);
   skb_pull_rcsum(skb2, mac_len);
  } else {

   skb_push_rcsum(skb2, skb->mac_len);
  }
 }

 skb2->skb_iif = skb->dev->ifindex;
 skb2->dev = dev;


 if (is_redirect) {
  skb2->tc_redirected = 1;
  skb2->tc_from_ingress = skb2->tc_at_ingress;
  if (skb2->tc_from_ingress)
   skb2->tstamp = 0;

  if (use_reinsert) {
   res->ingress = want_ingress;
   res->qstats = this_cpu_ptr(m->common.cpu_qstats);
   skb_tc_reinsert(skb, res);
   __this_cpu_dec(mirred_rec_level);
   return TC_ACT_CONSUMED;
  }
 }

 if (!want_ingress)
  err = dev_queue_xmit(skb2);
 else
  err = netif_receive_skb(skb2);

 if (err) {
out:
  qstats_overlimit_inc(this_cpu_ptr(m->common.cpu_qstats));
  if (tcf_mirred_is_act_redirect(m_eaction))
   retval = TC_ACT_SHOT;
 }
 __this_cpu_dec(mirred_rec_level);

 return retval;
}
