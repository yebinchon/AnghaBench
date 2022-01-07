
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mesh_path {int is_root; int timer; int state_lock; int exp_time; int frame_queue; scalar_t__ flags; struct ieee80211_sub_if_data* sdata; int rann_snd_addr; int dst; } ;
struct ieee80211_sub_if_data {int dummy; } ;
typedef int gfp_t ;


 int ETH_ALEN ;
 int eth_broadcast_addr (int ) ;
 int jiffies ;
 struct mesh_path* kzalloc (int,int ) ;
 int memcpy (int ,int const*,int ) ;
 int mesh_path_timer ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static
struct mesh_path *mesh_path_new(struct ieee80211_sub_if_data *sdata,
    const u8 *dst, gfp_t gfp_flags)
{
 struct mesh_path *new_mpath;

 new_mpath = kzalloc(sizeof(struct mesh_path), gfp_flags);
 if (!new_mpath)
  return ((void*)0);

 memcpy(new_mpath->dst, dst, ETH_ALEN);
 eth_broadcast_addr(new_mpath->rann_snd_addr);
 new_mpath->is_root = 0;
 new_mpath->sdata = sdata;
 new_mpath->flags = 0;
 skb_queue_head_init(&new_mpath->frame_queue);
 new_mpath->exp_time = jiffies;
 spin_lock_init(&new_mpath->state_lock);
 timer_setup(&new_mpath->timer, mesh_path_timer, 0);

 return new_mpath;
}
