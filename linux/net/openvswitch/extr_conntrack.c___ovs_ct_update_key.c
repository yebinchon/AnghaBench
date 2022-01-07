
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef int u8 ;
struct TYPE_21__ {int dst; int src; } ;
struct TYPE_22__ {TYPE_8__ ct_orig; } ;
struct TYPE_18__ {scalar_t__ type; } ;
struct TYPE_16__ {int dst; int src; } ;
struct TYPE_17__ {TYPE_3__ ct_orig; } ;
struct TYPE_14__ {int labels; int mark; } ;
struct sw_flow_key {scalar_t__ ct_orig_proto; TYPE_9__ ipv6; TYPE_5__ eth; TYPE_4__ ipv4; TYPE_1__ ct; int ct_zone; int ct_state; } ;
struct nf_conntrack_zone {int id; } ;
struct TYPE_12__ {int in6; int ip; } ;
struct TYPE_13__ {TYPE_10__ u3; } ;
struct TYPE_19__ {int in6; int ip; } ;
struct TYPE_20__ {TYPE_6__ u3; } ;
struct nf_conntrack_tuple {TYPE_11__ dst; TYPE_7__ src; } ;
struct nf_conn {TYPE_2__* tuplehash; struct nf_conn* master; } ;
struct TYPE_15__ {struct nf_conntrack_tuple tuple; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int IPPROTO_ICMP ;
 size_t IP_CT_DIR_ORIGINAL ;
 int NEXTHDR_ICMP ;
 scalar_t__ NFPROTO_IPV4 ;
 scalar_t__ NFPROTO_IPV6 ;
 int __ovs_ct_update_key_orig_tp (struct sw_flow_key*,struct nf_conntrack_tuple const*,int ) ;
 scalar_t__ htons (int ) ;
 scalar_t__ nf_ct_l3num (struct nf_conn const*) ;
 int ovs_ct_get_labels (struct nf_conn const*,int *) ;
 int ovs_ct_get_mark (struct nf_conn const*) ;
 int sw_flow_key_is_nd (struct sw_flow_key*) ;

__attribute__((used)) static void __ovs_ct_update_key(struct sw_flow_key *key, u8 state,
    const struct nf_conntrack_zone *zone,
    const struct nf_conn *ct)
{
 key->ct_state = state;
 key->ct_zone = zone->id;
 key->ct.mark = ovs_ct_get_mark(ct);
 ovs_ct_get_labels(ct, &key->ct.labels);

 if (ct) {
  const struct nf_conntrack_tuple *orig;


  if (ct->master)
   ct = ct->master;
  orig = &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple;


  if (key->eth.type == htons(ETH_P_IP) &&
      nf_ct_l3num(ct) == NFPROTO_IPV4) {
   key->ipv4.ct_orig.src = orig->src.u3.ip;
   key->ipv4.ct_orig.dst = orig->dst.u3.ip;
   __ovs_ct_update_key_orig_tp(key, orig, IPPROTO_ICMP);
   return;
  } else if (key->eth.type == htons(ETH_P_IPV6) &&
      !sw_flow_key_is_nd(key) &&
      nf_ct_l3num(ct) == NFPROTO_IPV6) {
   key->ipv6.ct_orig.src = orig->src.u3.in6;
   key->ipv6.ct_orig.dst = orig->dst.u3.in6;
   __ovs_ct_update_key_orig_tp(key, orig, NEXTHDR_ICMP);
   return;
  }
 }



 key->ct_orig_proto = 0;
}
