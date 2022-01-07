
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wdrr_bucket {unsigned int deficit; int bucketchain; } ;
struct sk_buff {int dummy; } ;
struct hhf_sched_data {unsigned int hhf_non_hh_weight; unsigned int quantum; int drop_overlimit; int new_buckets; int old_buckets; struct wdrr_bucket* buckets; } ;
struct TYPE_4__ {unsigned int backlog; } ;
struct TYPE_3__ {scalar_t__ qlen; } ;
struct Qdisc {scalar_t__ limit; TYPE_2__ qstats; TYPE_1__ q; } ;
typedef enum wdrr_bucket_idx { ____Placeholder_wdrr_bucket_idx } wdrr_bucket_idx ;


 int NET_XMIT_CN ;
 int NET_XMIT_SUCCESS ;
 int WDRR_BUCKET_FOR_HH ;
 int bucket_add (struct wdrr_bucket*,struct sk_buff*) ;
 int hhf_classify (struct sk_buff*,struct Qdisc*) ;
 int hhf_drop (struct Qdisc*,struct sk_buff**) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 struct hhf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_inc (struct Qdisc*,struct sk_buff*) ;
 int qdisc_tree_reduce_backlog (struct Qdisc*,int,unsigned int) ;

__attribute__((used)) static int hhf_enqueue(struct sk_buff *skb, struct Qdisc *sch,
         struct sk_buff **to_free)
{
 struct hhf_sched_data *q = qdisc_priv(sch);
 enum wdrr_bucket_idx idx;
 struct wdrr_bucket *bucket;
 unsigned int prev_backlog;

 idx = hhf_classify(skb, sch);

 bucket = &q->buckets[idx];
 bucket_add(bucket, skb);
 qdisc_qstats_backlog_inc(sch, skb);

 if (list_empty(&bucket->bucketchain)) {
  unsigned int weight;





  if (idx == WDRR_BUCKET_FOR_HH) {

   weight = 1;
   list_add_tail(&bucket->bucketchain, &q->old_buckets);
  } else {
   weight = q->hhf_non_hh_weight;
   list_add_tail(&bucket->bucketchain, &q->new_buckets);
  }
  bucket->deficit = weight * q->quantum;
 }
 if (++sch->q.qlen <= sch->limit)
  return NET_XMIT_SUCCESS;

 prev_backlog = sch->qstats.backlog;
 q->drop_overlimit++;



 if (hhf_drop(sch, to_free) == idx)
  return NET_XMIT_CN;


 qdisc_tree_reduce_backlog(sch, 1, prev_backlog - sch->qstats.backlog);
 return NET_XMIT_SUCCESS;
}
