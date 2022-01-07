
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wdrr_bucket {scalar_t__ head; } ;
struct sk_buff {int dummy; } ;
struct hhf_sched_data {struct wdrr_bucket* buckets; } ;
struct TYPE_2__ {int qlen; } ;
struct Qdisc {TYPE_1__ q; } ;


 size_t WDRR_BUCKET_FOR_HH ;
 size_t WDRR_BUCKET_FOR_NON_HH ;
 struct sk_buff* dequeue_head (struct wdrr_bucket*) ;
 int qdisc_drop (struct sk_buff*,struct Qdisc*,struct sk_buff**) ;
 struct hhf_sched_data* qdisc_priv (struct Qdisc*) ;
 int qdisc_qstats_backlog_dec (struct Qdisc*,struct sk_buff*) ;

__attribute__((used)) static unsigned int hhf_drop(struct Qdisc *sch, struct sk_buff **to_free)
{
 struct hhf_sched_data *q = qdisc_priv(sch);
 struct wdrr_bucket *bucket;


 bucket = &q->buckets[WDRR_BUCKET_FOR_HH];
 if (!bucket->head)
  bucket = &q->buckets[WDRR_BUCKET_FOR_NON_HH];

 if (bucket->head) {
  struct sk_buff *skb = dequeue_head(bucket);

  sch->q.qlen--;
  qdisc_qstats_backlog_dec(sch, skb);
  qdisc_drop(skb, sch, to_free);
 }


 return bucket - q->buckets;
}
