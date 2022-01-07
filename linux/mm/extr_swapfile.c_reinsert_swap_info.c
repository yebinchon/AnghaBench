
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int lock; int cluster_info; int swap_map; int prio; } ;


 int _enable_swap_info (struct swap_info_struct*) ;
 int setup_swap_info (struct swap_info_struct*,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap_lock ;

__attribute__((used)) static void reinsert_swap_info(struct swap_info_struct *p)
{
 spin_lock(&swap_lock);
 spin_lock(&p->lock);
 setup_swap_info(p, p->prio, p->swap_map, p->cluster_info);
 _enable_swap_info(p);
 spin_unlock(&p->lock);
 spin_unlock(&swap_lock);
}
