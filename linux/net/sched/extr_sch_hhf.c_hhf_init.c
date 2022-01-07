
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct wdrr_bucket {int bucketchain; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct list_head {int dummy; } ;
struct hhf_sched_data {int hhf_reset_timeout; int hhf_admit_bytes; int hhf_evict_timeout; int hhf_non_hh_weight; int hh_flows_limit; struct wdrr_bucket* buckets; int * hhf_valid_bits; int hhf_arrays_reset_timestamp; void** hhf_arrays; scalar_t__ hh_flows_current_cnt; scalar_t__ hh_flows_total_cnt; scalar_t__ hh_flows_overlimit; int * hh_flows; int old_buckets; int new_buckets; int perturbation; int quantum; } ;
struct Qdisc {int limit; } ;


 int BITS_PER_BYTE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HHF_ARRAYS_CNT ;
 int HHF_ARRAYS_LEN ;
 int HH_FLOWS_CNT ;
 int HZ ;
 int INIT_LIST_HEAD (int *) ;
 int WDRR_BUCKET_CNT ;
 int get_random_bytes (int *,int) ;
 int hhf_change (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ;
 int hhf_time_stamp () ;
 void* kvcalloc (int,int,int ) ;
 int kvzalloc (int,int ) ;
 int psched_mtu (int ) ;
 int qdisc_dev (struct Qdisc*) ;
 struct hhf_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int hhf_init(struct Qdisc *sch, struct nlattr *opt,
      struct netlink_ext_ack *extack)
{
 struct hhf_sched_data *q = qdisc_priv(sch);
 int i;

 sch->limit = 1000;
 q->quantum = psched_mtu(qdisc_dev(sch));
 get_random_bytes(&q->perturbation, sizeof(q->perturbation));
 INIT_LIST_HEAD(&q->new_buckets);
 INIT_LIST_HEAD(&q->old_buckets);


 q->hhf_reset_timeout = HZ / 25;
 q->hhf_admit_bytes = 131072;
 q->hhf_evict_timeout = HZ;
 q->hhf_non_hh_weight = 2;

 if (opt) {
  int err = hhf_change(sch, opt, extack);

  if (err)
   return err;
 }

 if (!q->hh_flows) {

  q->hh_flows = kvcalloc(HH_FLOWS_CNT, sizeof(struct list_head),
           GFP_KERNEL);
  if (!q->hh_flows)
   return -ENOMEM;
  for (i = 0; i < HH_FLOWS_CNT; i++)
   INIT_LIST_HEAD(&q->hh_flows[i]);


  q->hh_flows_limit = 2 * HH_FLOWS_CNT;
  q->hh_flows_overlimit = 0;
  q->hh_flows_total_cnt = 0;
  q->hh_flows_current_cnt = 0;


  for (i = 0; i < HHF_ARRAYS_CNT; i++) {
   q->hhf_arrays[i] = kvcalloc(HHF_ARRAYS_LEN,
          sizeof(u32),
          GFP_KERNEL);
   if (!q->hhf_arrays[i]) {



    return -ENOMEM;
   }
  }
  q->hhf_arrays_reset_timestamp = hhf_time_stamp();


  for (i = 0; i < HHF_ARRAYS_CNT; i++) {
   q->hhf_valid_bits[i] = kvzalloc(HHF_ARRAYS_LEN /
         BITS_PER_BYTE, GFP_KERNEL);
   if (!q->hhf_valid_bits[i]) {



    return -ENOMEM;
   }
  }


  for (i = 0; i < WDRR_BUCKET_CNT; i++) {
   struct wdrr_bucket *bucket = q->buckets + i;

   INIT_LIST_HEAD(&bucket->bucketchain);
  }
 }

 return 0;
}
