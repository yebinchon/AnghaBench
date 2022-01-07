
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_11__ {void* dst; void* src; } ;
struct TYPE_12__ {TYPE_4__ orig_tp; } ;
struct sw_flow_key {scalar_t__ ct_orig_proto; TYPE_5__ ct; } ;
struct TYPE_8__ {int code; int type; } ;
struct TYPE_13__ {void* all; TYPE_1__ icmp; } ;
struct TYPE_14__ {scalar_t__ protonum; TYPE_6__ u; } ;
struct TYPE_9__ {void* all; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_7__ dst; TYPE_3__ src; } ;


 void* htons (int ) ;

__attribute__((used)) static void __ovs_ct_update_key_orig_tp(struct sw_flow_key *key,
     const struct nf_conntrack_tuple *orig,
     u8 icmp_proto)
{
 key->ct_orig_proto = orig->dst.protonum;
 if (orig->dst.protonum == icmp_proto) {
  key->ct.orig_tp.src = htons(orig->dst.u.icmp.type);
  key->ct.orig_tp.dst = htons(orig->dst.u.icmp.code);
 } else {
  key->ct.orig_tp.src = orig->src.u.all;
  key->ct.orig_tp.dst = orig->dst.u.all;
 }
}
