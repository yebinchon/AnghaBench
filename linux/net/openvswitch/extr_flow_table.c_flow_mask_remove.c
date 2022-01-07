
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_mask {int list; int ref_count; } ;
struct flow_table {int dummy; } ;


 int ASSERT_OVSL () ;
 int BUG_ON (int) ;
 int kfree_rcu (struct sw_flow_mask*,int ) ;
 int list_del_rcu (int *) ;
 int rcu ;

__attribute__((used)) static void flow_mask_remove(struct flow_table *tbl, struct sw_flow_mask *mask)
{
 if (mask) {



  ASSERT_OVSL();
  BUG_ON(!mask->ref_count);
  mask->ref_count--;

  if (!mask->ref_count) {
   list_del_rcu(&mask->list);
   kfree_rcu(mask, rcu);
  }
 }
}
