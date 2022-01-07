
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct crush_bucket_uniform* items; } ;
struct crush_bucket_uniform {TYPE_1__ h; } ;


 int kfree (struct crush_bucket_uniform*) ;

void crush_destroy_bucket_uniform(struct crush_bucket_uniform *b)
{
 kfree(b->h.items);
 kfree(b);
}
