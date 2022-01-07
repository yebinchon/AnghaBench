
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct crush_bucket_straw* items; } ;
struct crush_bucket_straw {TYPE_1__ h; struct crush_bucket_straw* item_weights; struct crush_bucket_straw* straws; } ;


 int kfree (struct crush_bucket_straw*) ;

void crush_destroy_bucket_straw(struct crush_bucket_straw *b)
{
 kfree(b->straws);
 kfree(b->item_weights);
 kfree(b->h.items);
 kfree(b);
}
