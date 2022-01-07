
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct neigh_table {scalar_t__ family; int gc_thresh1; int gc_thresh2; int gc_thresh3; int gc_interval; int lock; int id; } ;
struct neigh_parms {int reachable_time; } ;
struct ndtmsg {scalar_t__ ndtm_family; } ;


 int ANYCAST_DELAY ;
 int APP_PROBES ;
 int BASE_REACHABLE_TIME ;
 int DELAY_PROBE_TIME ;
 int EINVAL ;
 int ENOENT ;
 int ETH_FRAME_LEN ;
 int GC_STALETIME ;
 int LOCKTIME ;
 int MCAST_PROBES ;
 int MCAST_REPROBES ;
 size_t NDTA_GC_INTERVAL ;
 int NDTA_MAX ;
 size_t NDTA_NAME ;
 size_t NDTA_PARMS ;
 size_t NDTA_THRESH1 ;
 size_t NDTA_THRESH2 ;
 size_t NDTA_THRESH3 ;





 size_t NDTPA_IFINDEX ;

 int NDTPA_MAX ;
 int NEIGH_NR_TABLES ;
 int NEIGH_VAR (struct neigh_parms*,int ) ;
 int NEIGH_VAR_SET (struct neigh_parms*,int ,int) ;
 int NETEVENT_DELAY_PROBE_TIME_UPDATE ;
 int PROXY_DELAY ;
 int PROXY_QLEN ;
 int QUEUE_LEN_BYTES ;
 int RETRANS_TIME ;
 int SKB_TRUESIZE (int ) ;
 int UCAST_PROBES ;
 int call_netevent_notifiers (int ,struct neigh_parms*) ;
 int init_net ;
 struct neigh_parms* lookup_neigh_parms (struct neigh_table*,struct net*,int) ;
 int neigh_rand_reach_time (int ) ;
 struct neigh_table** neigh_tables ;
 int net_eq (struct net*,int *) ;
 int nl_neightbl_policy ;
 int nl_ntbl_parm_policy ;
 int nla_get_msecs (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int,struct nlattr*,int ,struct netlink_ext_ack*) ;
 scalar_t__ nla_strcmp (struct nlattr*,int ) ;
 struct ndtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 struct net* sock_net (int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int neightbl_set(struct sk_buff *skb, struct nlmsghdr *nlh,
   struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct neigh_table *tbl;
 struct ndtmsg *ndtmsg;
 struct nlattr *tb[NDTA_MAX+1];
 bool found = 0;
 int err, tidx;

 err = nlmsg_parse_deprecated(nlh, sizeof(*ndtmsg), tb, NDTA_MAX,
         nl_neightbl_policy, extack);
 if (err < 0)
  goto errout;

 if (tb[NDTA_NAME] == ((void*)0)) {
  err = -EINVAL;
  goto errout;
 }

 ndtmsg = nlmsg_data(nlh);

 for (tidx = 0; tidx < NEIGH_NR_TABLES; tidx++) {
  tbl = neigh_tables[tidx];
  if (!tbl)
   continue;
  if (ndtmsg->ndtm_family && tbl->family != ndtmsg->ndtm_family)
   continue;
  if (nla_strcmp(tb[NDTA_NAME], tbl->id) == 0) {
   found = 1;
   break;
  }
 }

 if (!found)
  return -ENOENT;





 write_lock_bh(&tbl->lock);

 if (tb[NDTA_PARMS]) {
  struct nlattr *tbp[NDTPA_MAX+1];
  struct neigh_parms *p;
  int i, ifindex = 0;

  err = nla_parse_nested_deprecated(tbp, NDTPA_MAX,
        tb[NDTA_PARMS],
        nl_ntbl_parm_policy, extack);
  if (err < 0)
   goto errout_tbl_lock;

  if (tbp[NDTPA_IFINDEX])
   ifindex = nla_get_u32(tbp[NDTPA_IFINDEX]);

  p = lookup_neigh_parms(tbl, net, ifindex);
  if (p == ((void*)0)) {
   err = -ENOENT;
   goto errout_tbl_lock;
  }

  for (i = 1; i <= NDTPA_MAX; i++) {
   if (tbp[i] == ((void*)0))
    continue;

   switch (i) {
   case 131:
    NEIGH_VAR_SET(p, QUEUE_LEN_BYTES,
           nla_get_u32(tbp[i]) *
           SKB_TRUESIZE(ETH_FRAME_LEN));
    break;
   case 130:
    NEIGH_VAR_SET(p, QUEUE_LEN_BYTES,
           nla_get_u32(tbp[i]));
    break;
   case 132:
    NEIGH_VAR_SET(p, PROXY_QLEN,
           nla_get_u32(tbp[i]));
    break;
   case 140:
    NEIGH_VAR_SET(p, APP_PROBES,
           nla_get_u32(tbp[i]));
    break;
   case 128:
    NEIGH_VAR_SET(p, UCAST_PROBES,
           nla_get_u32(tbp[i]));
    break;
   case 135:
    NEIGH_VAR_SET(p, MCAST_PROBES,
           nla_get_u32(tbp[i]));
    break;
   case 134:
    NEIGH_VAR_SET(p, MCAST_REPROBES,
           nla_get_u32(tbp[i]));
    break;
   case 139:
    NEIGH_VAR_SET(p, BASE_REACHABLE_TIME,
           nla_get_msecs(tbp[i]));




    p->reachable_time =
     neigh_rand_reach_time(NEIGH_VAR(p, BASE_REACHABLE_TIME));
    break;
   case 137:
    NEIGH_VAR_SET(p, GC_STALETIME,
           nla_get_msecs(tbp[i]));
    break;
   case 138:
    NEIGH_VAR_SET(p, DELAY_PROBE_TIME,
           nla_get_msecs(tbp[i]));
    call_netevent_notifiers(NETEVENT_DELAY_PROBE_TIME_UPDATE, p);
    break;
   case 129:
    NEIGH_VAR_SET(p, RETRANS_TIME,
           nla_get_msecs(tbp[i]));
    break;
   case 141:
    NEIGH_VAR_SET(p, ANYCAST_DELAY,
           nla_get_msecs(tbp[i]));
    break;
   case 133:
    NEIGH_VAR_SET(p, PROXY_DELAY,
           nla_get_msecs(tbp[i]));
    break;
   case 136:
    NEIGH_VAR_SET(p, LOCKTIME,
           nla_get_msecs(tbp[i]));
    break;
   }
  }
 }

 err = -ENOENT;
 if ((tb[NDTA_THRESH1] || tb[NDTA_THRESH2] ||
      tb[NDTA_THRESH3] || tb[NDTA_GC_INTERVAL]) &&
     !net_eq(net, &init_net))
  goto errout_tbl_lock;

 if (tb[NDTA_THRESH1])
  tbl->gc_thresh1 = nla_get_u32(tb[NDTA_THRESH1]);

 if (tb[NDTA_THRESH2])
  tbl->gc_thresh2 = nla_get_u32(tb[NDTA_THRESH2]);

 if (tb[NDTA_THRESH3])
  tbl->gc_thresh3 = nla_get_u32(tb[NDTA_THRESH3]);

 if (tb[NDTA_GC_INTERVAL])
  tbl->gc_interval = nla_get_msecs(tb[NDTA_GC_INTERVAL]);

 err = 0;

errout_tbl_lock:
 write_unlock_bh(&tbl->lock);
errout:
 return err;
}
