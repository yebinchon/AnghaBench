
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_info_struct {int lock; int type; } ;
struct swap_cluster_info {int dummy; } ;


 int _enable_swap_info (struct swap_info_struct*) ;
 int frontswap_init (int ,unsigned long*) ;
 int setup_swap_info (struct swap_info_struct*,int,unsigned char*,struct swap_cluster_info*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swap_lock ;
 int synchronize_rcu () ;

__attribute__((used)) static void enable_swap_info(struct swap_info_struct *p, int prio,
    unsigned char *swap_map,
    struct swap_cluster_info *cluster_info,
    unsigned long *frontswap_map)
{
 frontswap_init(p->type, frontswap_map);
 spin_lock(&swap_lock);
 spin_lock(&p->lock);
 setup_swap_info(p, prio, swap_map, cluster_info);
 spin_unlock(&p->lock);
 spin_unlock(&swap_lock);




 synchronize_rcu();
 spin_lock(&swap_lock);
 spin_lock(&p->lock);
 _enable_swap_info(p);
 spin_unlock(&p->lock);
 spin_unlock(&swap_lock);
}
