
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; int mark; } ;
struct net_device {int ifindex; int dn_ptr; } ;
struct neighbour {int dummy; } ;
struct flowidn {scalar_t__ daddr; scalar_t__ saddr; int flowidn_mark; int flowidn_oif; int flowidn_iif; int flowidn_scope; } ;
struct dn_skb_cb {scalar_t__ dst; scalar_t__ src; int rt_flags; } ;
struct TYPE_8__ {int input; struct net_device* dev; int output; int lastuse; } ;
struct TYPE_9__ {scalar_t__ saddr; scalar_t__ daddr; int flowidn_mark; int flowidn_iif; scalar_t__ flowidn_oif; } ;
struct dn_route {scalar_t__ rt_saddr; scalar_t__ rt_daddr; scalar_t__ rt_gateway; scalar_t__ rt_dst_map; scalar_t__ rt_src_map; int rt_flags; TYPE_3__ dst; TYPE_4__ fld; struct neighbour* n; void* rt_local_src; int * dn_next; } ;
struct dn_neigh {void* addr; } ;
struct dn_fib_res {int type; TYPE_2__* fi; scalar_t__ r; } ;
struct TYPE_6__ {int forwarding; } ;
struct dn_dev {int router; TYPE_1__ parms; } ;
typedef void* __le16 ;
struct TYPE_7__ {int fib_nhs; } ;


 struct net_device* DN_FIB_RES_DEV (struct dn_fib_res) ;
 void* DN_FIB_RES_GW (struct dn_fib_res) ;
 void* DN_FIB_RES_PREFSRC (struct dn_fib_res) ;
 int DN_RT_F_IE ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int DST_HOST ;
 int DST_OBSOLETE_NONE ;
 int EINVAL ;
 int ENOBUFS ;
 int ENOTUNIQ ;
 int ESRCH ;
 int RTCF_DNAT ;
 int RTCF_DOREDIRECT ;
 int RTCF_LOCAL ;
 int RTCF_NAT ;


 int RTN_NAT ;


 int RT_SCOPE_UNIVERSE ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 scalar_t__ dn_dev_islocal (struct net_device*,scalar_t__) ;
 int dn_dst_ops ;
 int dn_fib_lookup (struct flowidn*,struct dn_fib_res*) ;
 int dn_fib_res_put (struct dn_fib_res*) ;
 scalar_t__ dn_fib_rules_map_destination (scalar_t__,struct dn_fib_res*) ;
 int dn_fib_select_multipath (struct flowidn*,struct dn_fib_res*) ;
 int dn_forward ;
 unsigned int dn_hash (scalar_t__,scalar_t__) ;
 int dn_insert_route (struct dn_route*,unsigned int,struct dn_route**) ;
 int dn_nsp_rx ;
 int dn_output ;
 int dn_rt_bug_out ;
 int dn_rt_set_next_hop (struct dn_route*,struct dn_fib_res*) ;
 struct dn_route* dst_alloc (int *,struct net_device*,int,int ,int ) ;
 int dst_discard ;
 int dst_release_immediate (TYPE_3__*) ;
 int jiffies ;
 int memset (TYPE_4__*,int ,int) ;
 struct neighbour* neigh_clone (int ) ;
 int neigh_release (struct neighbour*) ;
 int net_crit_ratelimited (char*) ;
 struct dn_dev* rcu_dereference (int ) ;
 int skb_dst_set (struct sk_buff*,TYPE_3__*) ;

__attribute__((used)) static int dn_route_input_slow(struct sk_buff *skb)
{
 struct dn_route *rt = ((void*)0);
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 struct net_device *in_dev = skb->dev;
 struct net_device *out_dev = ((void*)0);
 struct dn_dev *dn_db;
 struct neighbour *neigh = ((void*)0);
 unsigned int hash;
 int flags = 0;
 __le16 gateway = 0;
 __le16 local_src = 0;
 struct flowidn fld = {
  .daddr = cb->dst,
  .saddr = cb->src,
  .flowidn_scope = RT_SCOPE_UNIVERSE,
  .flowidn_mark = skb->mark,
  .flowidn_iif = skb->dev->ifindex,
 };
 struct dn_fib_res res = { .fi = ((void*)0), .type = 128 };
 int err = -EINVAL;
 int free_res = 0;

 dev_hold(in_dev);

 if ((dn_db = rcu_dereference(in_dev->dn_ptr)) == ((void*)0))
  goto out;


 if (fld.saddr == 0)
  goto out;
 err = -ENOTUNIQ;
 if (dn_dev_islocal(in_dev, cb->src))
  goto out;

 err = dn_fib_lookup(&fld, &res);
 if (err) {
  if (err != -ESRCH)
   goto out;



  if (!dn_dev_islocal(in_dev, cb->dst))
   goto e_inval;

  res.type = 130;
 } else {
  __le16 src_map = fld.saddr;
  free_res = 1;

  out_dev = DN_FIB_RES_DEV(res);
  if (out_dev == ((void*)0)) {
   net_crit_ratelimited("Bug in dn_route_input_slow() No output device\n");
   goto e_inval;
  }
  dev_hold(out_dev);

  if (res.r)
   src_map = fld.saddr;

  gateway = DN_FIB_RES_GW(res);
  if (res.type == RTN_NAT) {
   fld.daddr = dn_fib_rules_map_destination(fld.daddr, &res);
   dn_fib_res_put(&res);
   free_res = 0;
   if (dn_fib_lookup(&fld, &res))
    goto e_inval;
   free_res = 1;
   if (res.type != 129)
    goto e_inval;
   flags |= RTCF_DNAT;
   gateway = fld.daddr;
  }
  fld.saddr = src_map;
 }

 switch(res.type) {
 case 129:






  if (dn_db->parms.forwarding == 0)
   goto e_inval;

  if (res.fi->fib_nhs > 1 && fld.flowidn_oif == 0)
   dn_fib_select_multipath(&fld, &res);







  if (out_dev == in_dev && !(flags & RTCF_NAT))
   flags |= RTCF_DOREDIRECT;

  local_src = DN_FIB_RES_PREFSRC(res);

 case 131:
 case 128:
  break;
 case 130:
  flags |= RTCF_LOCAL;
  fld.saddr = cb->dst;
  fld.daddr = cb->src;


  if (gateway)
   goto make_route;


  if (cb->rt_flags & DN_RT_F_IE) {
   gateway = cb->src;
   goto make_route;
  }


  neigh = neigh_clone(dn_db->router);
  if (neigh) {
   gateway = ((struct dn_neigh *)neigh)->addr;
   goto make_route;
  }


  gateway = cb->src;
  goto make_route;
 default:
  goto e_inval;
 }

make_route:
 rt = dst_alloc(&dn_dst_ops, out_dev, 1, DST_OBSOLETE_NONE, DST_HOST);
 if (rt == ((void*)0))
  goto e_nobufs;

 rt->dn_next = ((void*)0);
 memset(&rt->fld, 0, sizeof(rt->fld));
 rt->rt_saddr = fld.saddr;
 rt->rt_daddr = fld.daddr;
 rt->rt_gateway = fld.daddr;
 if (gateway)
  rt->rt_gateway = gateway;
 rt->rt_local_src = local_src ? local_src : rt->rt_saddr;

 rt->rt_dst_map = fld.daddr;
 rt->rt_src_map = fld.saddr;

 rt->fld.saddr = cb->src;
 rt->fld.daddr = cb->dst;
 rt->fld.flowidn_oif = 0;
 rt->fld.flowidn_iif = in_dev->ifindex;
 rt->fld.flowidn_mark = fld.flowidn_mark;

 rt->n = neigh;
 rt->dst.lastuse = jiffies;
 rt->dst.output = dn_rt_bug_out;
 switch (res.type) {
 case 129:
  rt->dst.input = dn_forward;
  break;
 case 130:
  rt->dst.output = dn_output;
  rt->dst.input = dn_nsp_rx;
  rt->dst.dev = in_dev;
  flags |= RTCF_LOCAL;
  break;
 default:
 case 128:
 case 131:
  rt->dst.input = dst_discard;
 }
 rt->rt_flags = flags;

 err = dn_rt_set_next_hop(rt, &res);
 if (err)
  goto e_neighbour;

 hash = dn_hash(rt->fld.saddr, rt->fld.daddr);

 dn_insert_route(rt, hash, &rt);
 skb_dst_set(skb, &rt->dst);

done:
 if (neigh)
  neigh_release(neigh);
 if (free_res)
  dn_fib_res_put(&res);
 dev_put(in_dev);
 if (out_dev)
  dev_put(out_dev);
out:
 return err;

e_inval:
 err = -EINVAL;
 goto done;

e_nobufs:
 err = -ENOBUFS;
 goto done;

e_neighbour:
 dst_release_immediate(&rt->dst);
 goto done;
}
