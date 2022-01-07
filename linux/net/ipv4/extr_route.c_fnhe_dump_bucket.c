
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rtable {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; int skb; } ;
struct net {int dummy; } ;
struct fnhe_hash_bucket {int chain; } ;
struct fib_nh_exception {int fnhe_genid; int fnhe_daddr; int fnhe_rth_output; int fnhe_rth_input; scalar_t__ fnhe_expires; int fnhe_next; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int FNHE_HASH_SIZE ;
 TYPE_2__ NETLINK_CB (int ) ;
 int jiffies ;
 void* rcu_dereference (int ) ;
 int rt_fill_info (struct net*,int ,int ,struct rtable*,int ,int *,struct sk_buff*,int ,int ,unsigned int) ;
 scalar_t__ time_after (int ,scalar_t__) ;

__attribute__((used)) static int fnhe_dump_bucket(struct net *net, struct sk_buff *skb,
       struct netlink_callback *cb, u32 table_id,
       struct fnhe_hash_bucket *bucket, int genid,
       int *fa_index, int fa_start, unsigned int flags)
{
 int i;

 for (i = 0; i < FNHE_HASH_SIZE; i++) {
  struct fib_nh_exception *fnhe;

  for (fnhe = rcu_dereference(bucket[i].chain); fnhe;
       fnhe = rcu_dereference(fnhe->fnhe_next)) {
   struct rtable *rt;
   int err;

   if (*fa_index < fa_start)
    goto next;

   if (fnhe->fnhe_genid != genid)
    goto next;

   if (fnhe->fnhe_expires &&
       time_after(jiffies, fnhe->fnhe_expires))
    goto next;

   rt = rcu_dereference(fnhe->fnhe_rth_input);
   if (!rt)
    rt = rcu_dereference(fnhe->fnhe_rth_output);
   if (!rt)
    goto next;

   err = rt_fill_info(net, fnhe->fnhe_daddr, 0, rt,
        table_id, ((void*)0), skb,
        NETLINK_CB(cb->skb).portid,
        cb->nlh->nlmsg_seq, flags);
   if (err)
    return err;
next:
   (*fa_index)++;
  }
 }

 return 0;
}
