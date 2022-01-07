
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_block {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;
struct Qdisc {int dummy; } ;


 int ASSERT_RTNL () ;
 struct tcf_block* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct tcf_block*) ;
 int PTR_ERR (struct tcf_block*) ;
 struct tcf_block* __tcf_block_find (struct net*,struct Qdisc*,unsigned long,int,int ,struct netlink_ext_ack*) ;
 int __tcf_qdisc_cl_find (struct Qdisc*,int ,unsigned long*,int,struct netlink_ext_ack*) ;
 int __tcf_qdisc_find (struct net*,struct Qdisc**,int *,int,int,struct netlink_ext_ack*) ;
 int qdisc_put (struct Qdisc*) ;

__attribute__((used)) static struct tcf_block *tcf_block_find(struct net *net, struct Qdisc **q,
     u32 *parent, unsigned long *cl,
     int ifindex, u32 block_index,
     struct netlink_ext_ack *extack)
{
 struct tcf_block *block;
 int err = 0;

 ASSERT_RTNL();

 err = __tcf_qdisc_find(net, q, parent, ifindex, 1, extack);
 if (err)
  goto errout;

 err = __tcf_qdisc_cl_find(*q, *parent, cl, ifindex, extack);
 if (err)
  goto errout_qdisc;

 block = __tcf_block_find(net, *q, *cl, ifindex, block_index, extack);
 if (IS_ERR(block)) {
  err = PTR_ERR(block);
  goto errout_qdisc;
 }

 return block;

errout_qdisc:
 if (*q)
  qdisc_put(*q);
errout:
 *q = ((void*)0);
 return ERR_PTR(err);
}
