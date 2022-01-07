
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int tstamp; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int * last_run_head; int * fragments_tail; int rb_fragments; int stamp; } ;
struct lowpan_frag_queue {TYPE_1__ q; } ;


 int RB_ROOT ;
 int inet_frag_kill (TYPE_1__*) ;
 int inet_frag_reasm_finish (TYPE_1__*,struct sk_buff*,void*,int) ;
 void* inet_frag_reasm_prepare (TYPE_1__*,struct sk_buff*,struct sk_buff*) ;
 int net_dbg_ratelimited (char*) ;

__attribute__((used)) static int lowpan_frag_reasm(struct lowpan_frag_queue *fq, struct sk_buff *skb,
        struct sk_buff *prev_tail, struct net_device *ldev)
{
 void *reasm_data;

 inet_frag_kill(&fq->q);

 reasm_data = inet_frag_reasm_prepare(&fq->q, skb, prev_tail);
 if (!reasm_data)
  goto out_oom;
 inet_frag_reasm_finish(&fq->q, skb, reasm_data, 0);

 skb->dev = ldev;
 skb->tstamp = fq->q.stamp;
 fq->q.rb_fragments = RB_ROOT;
 fq->q.fragments_tail = ((void*)0);
 fq->q.last_run_head = ((void*)0);

 return 1;
out_oom:
 net_dbg_ratelimited("lowpan_frag_reasm: no memory for reassembly\n");
 return -1;
}
