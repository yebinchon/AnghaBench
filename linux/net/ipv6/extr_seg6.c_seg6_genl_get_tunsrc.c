
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; } ;
struct TYPE_2__ {int tun_src; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int SEG6_ATTR_DST ;
 int SEG6_CMD_GET_TUNSRC ;
 struct net* genl_info_net (struct genl_info*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 struct sk_buff* genlmsg_new (int ,int ) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct in6_addr*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct in6_addr* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int seg6_genl_family ;
 TYPE_1__* seg6_pernet (struct net*) ;

__attribute__((used)) static int seg6_genl_get_tunsrc(struct sk_buff *skb, struct genl_info *info)
{
 struct net *net = genl_info_net(info);
 struct in6_addr *tun_src;
 struct sk_buff *msg;
 void *hdr;

 msg = genlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 hdr = genlmsg_put(msg, info->snd_portid, info->snd_seq,
     &seg6_genl_family, 0, SEG6_CMD_GET_TUNSRC);
 if (!hdr)
  goto free_msg;

 rcu_read_lock();
 tun_src = rcu_dereference(seg6_pernet(net)->tun_src);

 if (nla_put(msg, SEG6_ATTR_DST, sizeof(struct in6_addr), tun_src))
  goto nla_put_failure;

 rcu_read_unlock();

 genlmsg_end(msg, hdr);
 return genlmsg_reply(msg, info);

nla_put_failure:
 rcu_read_unlock();
free_msg:
 nlmsg_free(msg);
 return -ENOMEM;
}
