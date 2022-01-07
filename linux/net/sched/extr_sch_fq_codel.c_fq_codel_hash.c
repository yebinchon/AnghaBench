
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct fq_codel_sched_data {int flows_cnt; } ;


 unsigned int reciprocal_scale (int ,int ) ;
 int skb_get_hash (struct sk_buff*) ;

__attribute__((used)) static unsigned int fq_codel_hash(const struct fq_codel_sched_data *q,
      struct sk_buff *skb)
{
 return reciprocal_scale(skb_get_hash(skb), q->flows_cnt);
}
