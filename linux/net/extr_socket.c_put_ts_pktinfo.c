
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ts_pktinfo ;
struct sk_buff {scalar_t__ len; } ;
struct scm_ts_pktinfo {scalar_t__ pkt_length; int if_index; } ;
struct net_device {int ifindex; } ;
struct msghdr {int dummy; } ;


 int SCM_TIMESTAMPING_PKTINFO ;
 int SOL_SOCKET ;
 struct net_device* dev_get_by_napi_id (int ) ;
 int memset (struct scm_ts_pktinfo*,int ,int) ;
 int put_cmsg (struct msghdr*,int ,int ,int,struct scm_ts_pktinfo*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_mac_header_was_set (struct sk_buff*) ;
 scalar_t__ skb_mac_offset (struct sk_buff*) ;
 int skb_napi_id (struct sk_buff*) ;

__attribute__((used)) static void put_ts_pktinfo(struct msghdr *msg, struct sk_buff *skb)
{
 struct scm_ts_pktinfo ts_pktinfo;
 struct net_device *orig_dev;

 if (!skb_mac_header_was_set(skb))
  return;

 memset(&ts_pktinfo, 0, sizeof(ts_pktinfo));

 rcu_read_lock();
 orig_dev = dev_get_by_napi_id(skb_napi_id(skb));
 if (orig_dev)
  ts_pktinfo.if_index = orig_dev->ifindex;
 rcu_read_unlock();

 ts_pktinfo.pkt_length = skb->len - skb_mac_offset(skb);
 put_cmsg(msg, SOL_SOCKET, SCM_TIMESTAMPING_PKTINFO,
   sizeof(ts_pktinfo), &ts_pktinfo);
}
