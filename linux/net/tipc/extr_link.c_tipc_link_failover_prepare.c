
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff_head {int dummy; } ;
struct tipc_link {int drop_point; int * failover_reasm_skb; struct sk_buff_head failover_deferdq; } ;


 int __skb_queue_purge (struct sk_buff_head*) ;
 int pr_warn (char*,int ) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int skb_queue_len (struct sk_buff_head*) ;
 int tipc_link_create_dummy_tnl_msg (struct tipc_link*,struct sk_buff_head*) ;
 scalar_t__ unlikely (int) ;

void tipc_link_failover_prepare(struct tipc_link *l, struct tipc_link *tnl,
    struct sk_buff_head *xmitq)
{
 struct sk_buff_head *fdefq = &tnl->failover_deferdq;

 tipc_link_create_dummy_tnl_msg(tnl, xmitq);







 tnl->drop_point = 1;
 tnl->failover_reasm_skb = ((void*)0);


 if (unlikely(!skb_queue_empty(fdefq))) {
  pr_warn("Link failover deferdq not empty: %d!\n",
   skb_queue_len(fdefq));
  __skb_queue_purge(fdefq);
 }
}
