
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int protonum; } ;
struct nf_conntrack_tuple {TYPE_1__ dst; } ;
struct nf_conntrack_l4proto {int dummy; } ;


 int ctnetlink_dump_tuples_ip (struct sk_buff*,struct nf_conntrack_tuple const*) ;
 int ctnetlink_dump_tuples_proto (struct sk_buff*,struct nf_conntrack_tuple const*,struct nf_conntrack_l4proto const*) ;
 struct nf_conntrack_l4proto* nf_ct_l4proto_find (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static int ctnetlink_dump_tuples(struct sk_buff *skb,
     const struct nf_conntrack_tuple *tuple)
{
 const struct nf_conntrack_l4proto *l4proto;
 int ret;

 rcu_read_lock();
 ret = ctnetlink_dump_tuples_ip(skb, tuple);

 if (ret >= 0) {
  l4proto = nf_ct_l4proto_find(tuple->dst.protonum);
  ret = ctnetlink_dump_tuples_proto(skb, tuple, l4proto);
 }
 rcu_read_unlock();
 return ret;
}
