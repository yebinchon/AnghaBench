
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bdi_writeback {int bdi_node; } ;


 int list_del_rcu (int *) ;

__attribute__((used)) static void cgwb_remove_from_bdi_list(struct bdi_writeback *wb)
{
 list_del_rcu(&wb->bdi_node);
}
