
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct neigh_parms {int reachable_time; int refcnt; TYPE_1__* dev; } ;
struct TYPE_2__ {int ifindex; } ;


 int ANYCAST_DELAY ;
 int APP_PROBES ;
 int BASE_REACHABLE_TIME ;
 int DELAY_PROBE_TIME ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ETH_FRAME_LEN ;
 int GC_STALETIME ;
 int LOCKTIME ;
 int MCAST_PROBES ;
 int MCAST_REPROBES ;
 int NDTA_PARMS ;
 int NDTPA_ANYCAST_DELAY ;
 int NDTPA_APP_PROBES ;
 int NDTPA_BASE_REACHABLE_TIME ;
 int NDTPA_DELAY_PROBE_TIME ;
 int NDTPA_GC_STALETIME ;
 int NDTPA_IFINDEX ;
 int NDTPA_LOCKTIME ;
 int NDTPA_MCAST_PROBES ;
 int NDTPA_MCAST_REPROBES ;
 int NDTPA_PAD ;
 int NDTPA_PROXY_DELAY ;
 int NDTPA_PROXY_QLEN ;
 int NDTPA_QUEUE_LEN ;
 int NDTPA_QUEUE_LENBYTES ;
 int NDTPA_REACHABLE_TIME ;
 int NDTPA_REFCNT ;
 int NDTPA_RETRANS_TIME ;
 int NDTPA_UCAST_PROBES ;
 int NEIGH_VAR (struct neigh_parms*,int ) ;
 int PROXY_DELAY ;
 int PROXY_QLEN ;
 int QUEUE_LEN_BYTES ;
 int RETRANS_TIME ;
 int SKB_TRUESIZE (int ) ;
 int UCAST_PROBES ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put_msecs (struct sk_buff*,int ,int,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int refcount_read (int *) ;

__attribute__((used)) static int neightbl_fill_parms(struct sk_buff *skb, struct neigh_parms *parms)
{
 struct nlattr *nest;

 nest = nla_nest_start_noflag(skb, NDTA_PARMS);
 if (nest == ((void*)0))
  return -ENOBUFS;

 if ((parms->dev &&
      nla_put_u32(skb, NDTPA_IFINDEX, parms->dev->ifindex)) ||
     nla_put_u32(skb, NDTPA_REFCNT, refcount_read(&parms->refcnt)) ||
     nla_put_u32(skb, NDTPA_QUEUE_LENBYTES,
   NEIGH_VAR(parms, QUEUE_LEN_BYTES)) ||

     nla_put_u32(skb, NDTPA_QUEUE_LEN,
   NEIGH_VAR(parms, QUEUE_LEN_BYTES) / SKB_TRUESIZE(ETH_FRAME_LEN)) ||
     nla_put_u32(skb, NDTPA_PROXY_QLEN, NEIGH_VAR(parms, PROXY_QLEN)) ||
     nla_put_u32(skb, NDTPA_APP_PROBES, NEIGH_VAR(parms, APP_PROBES)) ||
     nla_put_u32(skb, NDTPA_UCAST_PROBES,
   NEIGH_VAR(parms, UCAST_PROBES)) ||
     nla_put_u32(skb, NDTPA_MCAST_PROBES,
   NEIGH_VAR(parms, MCAST_PROBES)) ||
     nla_put_u32(skb, NDTPA_MCAST_REPROBES,
   NEIGH_VAR(parms, MCAST_REPROBES)) ||
     nla_put_msecs(skb, NDTPA_REACHABLE_TIME, parms->reachable_time,
     NDTPA_PAD) ||
     nla_put_msecs(skb, NDTPA_BASE_REACHABLE_TIME,
     NEIGH_VAR(parms, BASE_REACHABLE_TIME), NDTPA_PAD) ||
     nla_put_msecs(skb, NDTPA_GC_STALETIME,
     NEIGH_VAR(parms, GC_STALETIME), NDTPA_PAD) ||
     nla_put_msecs(skb, NDTPA_DELAY_PROBE_TIME,
     NEIGH_VAR(parms, DELAY_PROBE_TIME), NDTPA_PAD) ||
     nla_put_msecs(skb, NDTPA_RETRANS_TIME,
     NEIGH_VAR(parms, RETRANS_TIME), NDTPA_PAD) ||
     nla_put_msecs(skb, NDTPA_ANYCAST_DELAY,
     NEIGH_VAR(parms, ANYCAST_DELAY), NDTPA_PAD) ||
     nla_put_msecs(skb, NDTPA_PROXY_DELAY,
     NEIGH_VAR(parms, PROXY_DELAY), NDTPA_PAD) ||
     nla_put_msecs(skb, NDTPA_LOCKTIME,
     NEIGH_VAR(parms, LOCKTIME), NDTPA_PAD))
  goto nla_put_failure;
 return nla_nest_end(skb, nest);

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -EMSGSIZE;
}
