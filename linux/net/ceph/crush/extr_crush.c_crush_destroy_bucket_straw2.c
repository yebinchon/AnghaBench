
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct crush_bucket_straw2* items; } ;
struct crush_bucket_straw2 {TYPE_1__ h; struct crush_bucket_straw2* item_weights; } ;


 int kfree (struct crush_bucket_straw2*) ;

void crush_destroy_bucket_straw2(struct crush_bucket_straw2 *b)
{
 kfree(b->item_weights);
 kfree(b->h.items);
 kfree(b);
}
