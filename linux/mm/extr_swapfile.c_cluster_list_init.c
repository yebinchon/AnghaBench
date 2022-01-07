
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_list {int tail; int head; } ;


 int cluster_set_null (int *) ;

__attribute__((used)) static void cluster_list_init(struct swap_cluster_list *list)
{
 cluster_set_null(&list->head);
 cluster_set_null(&list->tail);
}
