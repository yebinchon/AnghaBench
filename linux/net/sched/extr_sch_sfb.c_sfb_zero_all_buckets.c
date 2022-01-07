
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfb_sched_data {int bins; } ;


 int memset (int *,int ,int) ;

__attribute__((used)) static void sfb_zero_all_buckets(struct sfb_sched_data *q)
{
 memset(&q->bins, 0, sizeof(q->bins));
}
