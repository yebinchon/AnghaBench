
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lru_hint; int active_nodes; int * slots_lock; int * slots; } ;
struct selinux_avc {TYPE_1__ avc_cache; int avc_cache_threshold; } ;


 int AVC_CACHE_SLOTS ;
 int AVC_DEF_CACHE_THRESHOLD ;
 int INIT_HLIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 struct selinux_avc selinux_avc ;
 int spin_lock_init (int *) ;

void selinux_avc_init(struct selinux_avc **avc)
{
 int i;

 selinux_avc.avc_cache_threshold = AVC_DEF_CACHE_THRESHOLD;
 for (i = 0; i < AVC_CACHE_SLOTS; i++) {
  INIT_HLIST_HEAD(&selinux_avc.avc_cache.slots[i]);
  spin_lock_init(&selinux_avc.avc_cache.slots_lock[i]);
 }
 atomic_set(&selinux_avc.avc_cache.active_nodes, 0);
 atomic_set(&selinux_avc.avc_cache.lru_hint, 0);
 *avc = &selinux_avc;
}
