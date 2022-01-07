
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct nf_flow_route {TYPE_3__* tuple; } ;
struct TYPE_24__ {int port; } ;
struct TYPE_13__ {TYPE_9__ tcp; } ;
struct TYPE_20__ {int in6; int in; } ;
struct TYPE_14__ {TYPE_10__ u; int protonum; TYPE_5__ u3; } ;
struct TYPE_21__ {int port; } ;
struct TYPE_22__ {TYPE_6__ tcp; } ;
struct TYPE_19__ {int in6; int in; } ;
struct TYPE_23__ {int l3num; TYPE_7__ u; TYPE_4__ u3; } ;
struct nf_conntrack_tuple {TYPE_11__ dst; TYPE_8__ src; } ;
struct nf_conn {TYPE_2__* tuplehash; } ;
struct flow_offload_tuple {int dir; int l3proto; struct dst_entry* dst_cache; int iifidx; int dst_port; int src_port; int l4proto; int mtu; int dst_v6; int src_v6; int dst_v4; int src_v4; } ;
struct flow_offload {TYPE_1__* tuplehash; } ;
struct dst_entry {TYPE_12__* dev; } ;
typedef enum flow_offload_tuple_dir { ____Placeholder_flow_offload_tuple_dir } flow_offload_tuple_dir ;
struct TYPE_18__ {struct dst_entry* dst; } ;
struct TYPE_17__ {struct nf_conntrack_tuple tuple; } ;
struct TYPE_16__ {struct flow_offload_tuple tuple; } ;
struct TYPE_15__ {int ifindex; } ;




 int ip6_dst_mtu_forward (struct dst_entry*) ;
 int ip_dst_mtu_maybe_forward (struct dst_entry*,int) ;

__attribute__((used)) static void
flow_offload_fill_dir(struct flow_offload *flow, struct nf_conn *ct,
        struct nf_flow_route *route,
        enum flow_offload_tuple_dir dir)
{
 struct flow_offload_tuple *ft = &flow->tuplehash[dir].tuple;
 struct nf_conntrack_tuple *ctt = &ct->tuplehash[dir].tuple;
 struct dst_entry *other_dst = route->tuple[!dir].dst;
 struct dst_entry *dst = route->tuple[dir].dst;

 ft->dir = dir;

 switch (ctt->src.l3num) {
 case 129:
  ft->src_v4 = ctt->src.u3.in;
  ft->dst_v4 = ctt->dst.u3.in;
  ft->mtu = ip_dst_mtu_maybe_forward(dst, 1);
  break;
 case 128:
  ft->src_v6 = ctt->src.u3.in6;
  ft->dst_v6 = ctt->dst.u3.in6;
  ft->mtu = ip6_dst_mtu_forward(dst);
  break;
 }

 ft->l3proto = ctt->src.l3num;
 ft->l4proto = ctt->dst.protonum;
 ft->src_port = ctt->src.u.tcp.port;
 ft->dst_port = ctt->dst.u.tcp.port;

 ft->iifidx = other_dst->dev->ifindex;
 ft->dst_cache = dst;
}
