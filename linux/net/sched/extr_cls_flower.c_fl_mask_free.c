
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fl_flow_mask {int ht; int filters; } ;


 int WARN_ON (int) ;
 int kfree (struct fl_flow_mask*) ;
 int list_empty (int *) ;
 int rhashtable_destroy (int *) ;

__attribute__((used)) static void fl_mask_free(struct fl_flow_mask *mask, bool mask_init_done)
{

 if (mask_init_done) {
  WARN_ON(!list_empty(&mask->filters));
  rhashtable_destroy(&mask->ht);
 }
 kfree(mask);
}
