
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct crush_bucket_tree* items; } ;
struct crush_bucket_tree {struct crush_bucket_tree* node_weights; TYPE_1__ h; } ;


 int kfree (struct crush_bucket_tree*) ;

void crush_destroy_bucket_tree(struct crush_bucket_tree *b)
{
 kfree(b->h.items);
 kfree(b->node_weights);
 kfree(b);
}
