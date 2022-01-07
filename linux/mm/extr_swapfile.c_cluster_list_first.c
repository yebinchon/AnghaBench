
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_list {int head; } ;


 unsigned int cluster_next (int *) ;

__attribute__((used)) static inline unsigned int cluster_list_first(struct swap_cluster_list *list)
{
 return cluster_next(&list->head);
}
