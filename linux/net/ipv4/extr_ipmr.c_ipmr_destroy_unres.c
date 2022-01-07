
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_type; } ;
struct nlmsgerr {int msg; int error; } ;
struct net {int dummy; } ;
struct mr_table {int cache_resolve_queue_len; int net; } ;
struct TYPE_6__ {int unresolved; } ;
struct TYPE_7__ {TYPE_1__ unres; } ;
struct TYPE_8__ {TYPE_2__ mfc_un; } ;
struct mfc_cache {TYPE_3__ _c; } ;
struct iphdr {int dummy; } ;
struct TYPE_10__ {int portid; } ;
struct TYPE_9__ {scalar_t__ version; } ;


 int ETIMEDOUT ;
 TYPE_5__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_ERROR ;
 int atomic_dec (int *) ;
 TYPE_4__* ip_hdr (struct sk_buff*) ;
 int ipmr_cache_free (struct mfc_cache*) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int *,int ,int) ;
 struct nlmsgerr* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_msg_size (int) ;
 struct net* read_pnet (int *) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 struct nlmsghdr* skb_pull (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static void ipmr_destroy_unres(struct mr_table *mrt, struct mfc_cache *c)
{
 struct net *net = read_pnet(&mrt->net);
 struct sk_buff *skb;
 struct nlmsgerr *e;

 atomic_dec(&mrt->cache_resolve_queue_len);

 while ((skb = skb_dequeue(&c->_c.mfc_un.unres.unresolved))) {
  if (ip_hdr(skb)->version == 0) {
   struct nlmsghdr *nlh = skb_pull(skb,
       sizeof(struct iphdr));
   nlh->nlmsg_type = NLMSG_ERROR;
   nlh->nlmsg_len = nlmsg_msg_size(sizeof(struct nlmsgerr));
   skb_trim(skb, nlh->nlmsg_len);
   e = nlmsg_data(nlh);
   e->error = -ETIMEDOUT;
   memset(&e->msg, 0, sizeof(e->msg));

   rtnl_unicast(skb, net, NETLINK_CB(skb).portid);
  } else {
   kfree_skb(skb);
  }
 }

 ipmr_cache_free(c);
}
