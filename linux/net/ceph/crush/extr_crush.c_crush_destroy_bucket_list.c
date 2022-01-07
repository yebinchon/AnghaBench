
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct crush_bucket_list* items; } ;
struct crush_bucket_list {TYPE_1__ h; struct crush_bucket_list* sum_weights; struct crush_bucket_list* item_weights; } ;


 int kfree (struct crush_bucket_list*) ;

void crush_destroy_bucket_list(struct crush_bucket_list *b)
{
 kfree(b->item_weights);
 kfree(b->sum_weights);
 kfree(b->h.items);
 kfree(b);
}
