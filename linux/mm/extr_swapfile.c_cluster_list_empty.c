
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_list {int head; } ;


 int cluster_is_null (int *) ;

__attribute__((used)) static inline bool cluster_list_empty(struct swap_cluster_list *list)
{
 return cluster_is_null(&list->head);
}
