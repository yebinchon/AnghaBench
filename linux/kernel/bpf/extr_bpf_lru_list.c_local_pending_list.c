
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct bpf_lru_locallist {struct list_head* lists; } ;


 size_t LOCAL_PENDING_LIST_IDX ;

__attribute__((used)) static struct list_head *local_pending_list(struct bpf_lru_locallist *loc_l)
{
 return &loc_l->lists[LOCAL_PENDING_LIST_IDX];
}
