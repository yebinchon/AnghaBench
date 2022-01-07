
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bdi_node; } ;
struct backing_dev_info {int wb_list; TYPE_1__ wb; } ;


 int list_add_tail_rcu (int *,int *) ;

__attribute__((used)) static void cgwb_bdi_register(struct backing_dev_info *bdi)
{
 list_add_tail_rcu(&bdi->wb.bdi_node, &bdi->wb_list);
}
