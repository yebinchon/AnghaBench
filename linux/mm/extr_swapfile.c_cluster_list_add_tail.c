
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_cluster_list {int tail; int head; } ;
struct swap_cluster_info {int lock; } ;


 int SINGLE_DEPTH_NESTING ;
 scalar_t__ cluster_list_empty (struct swap_cluster_list*) ;
 unsigned int cluster_next (int *) ;
 int cluster_set_next (struct swap_cluster_info*,unsigned int) ;
 int cluster_set_next_flag (int *,unsigned int,int ) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void cluster_list_add_tail(struct swap_cluster_list *list,
      struct swap_cluster_info *ci,
      unsigned int idx)
{
 if (cluster_list_empty(list)) {
  cluster_set_next_flag(&list->head, idx, 0);
  cluster_set_next_flag(&list->tail, idx, 0);
 } else {
  struct swap_cluster_info *ci_tail;
  unsigned int tail = cluster_next(&list->tail);





  ci_tail = ci + tail;
  spin_lock_nested(&ci_tail->lock, SINGLE_DEPTH_NESTING);
  cluster_set_next(ci_tail, idx);
  spin_unlock(&ci_tail->lock);
  cluster_set_next_flag(&list->tail, idx, 0);
 }
}
