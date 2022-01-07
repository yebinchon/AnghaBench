
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int sk; } ;
struct netns_ipvs {int sync_state; int sync_mutex; int bcfg; int mcfg; } ;
struct netlink_callback {int* args; } ;
struct net {int dummy; } ;


 int IP_VS_STATE_BACKUP ;
 int IP_VS_STATE_MASTER ;
 scalar_t__ ip_vs_genl_dump_daemon (struct sk_buff*,int,int *,struct netlink_callback*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct netns_ipvs* net_ipvs (struct net*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int ip_vs_genl_dump_daemons(struct sk_buff *skb,
       struct netlink_callback *cb)
{
 struct net *net = sock_net(skb->sk);
 struct netns_ipvs *ipvs = net_ipvs(net);

 mutex_lock(&ipvs->sync_mutex);
 if ((ipvs->sync_state & IP_VS_STATE_MASTER) && !cb->args[0]) {
  if (ip_vs_genl_dump_daemon(skb, IP_VS_STATE_MASTER,
        &ipvs->mcfg, cb) < 0)
   goto nla_put_failure;

  cb->args[0] = 1;
 }

 if ((ipvs->sync_state & IP_VS_STATE_BACKUP) && !cb->args[1]) {
  if (ip_vs_genl_dump_daemon(skb, IP_VS_STATE_BACKUP,
        &ipvs->bcfg, cb) < 0)
   goto nla_put_failure;

  cb->args[1] = 1;
 }

nla_put_failure:
 mutex_unlock(&ipvs->sync_mutex);

 return skb->len;
}
