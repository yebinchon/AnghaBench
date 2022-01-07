
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int addr_len; } ;
struct neighbour {int nud_state; int* ha; int lock; scalar_t__ arp_queue_len_bytes; int arp_queue; int (* output ) (struct neighbour*,struct sk_buff*) ;TYPE_1__* parms; void* confirmed; int ha_lock; int probes; void* updated; scalar_t__ dead; struct net_device* dev; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int reachable_time; } ;


 int BASE_REACHABLE_TIME ;
 int EINVAL ;
 int EPERM ;
 int NEIGH_UPDATE_F_ADMIN ;
 int NEIGH_UPDATE_F_OVERRIDE ;
 int NEIGH_UPDATE_F_OVERRIDE_ISROUTER ;
 int NEIGH_UPDATE_F_WEAK_OVERRIDE ;
 int NEIGH_VAR (TYPE_1__*,int ) ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int NUD_CONNECTED ;
 int NUD_FAILED ;
 int NUD_INCOMPLETE ;
 int NUD_IN_TIMER ;
 int NUD_NOARP ;
 int NUD_PERMANENT ;
 int NUD_PROBE ;
 int NUD_REACHABLE ;
 int NUD_STALE ;
 int NUD_VALID ;
 struct sk_buff* __skb_dequeue (int *) ;
 int __skb_queue_purge (int *) ;
 int atomic_set (int *,int ) ;
 struct neighbour* dst_neigh_lookup_skb (struct dst_entry*,struct sk_buff*) ;
 void* jiffies ;
 int memcmp (int const*,int*,int ) ;
 int memcpy (int const**,int const*,int ) ;
 int neigh_add_timer (struct neighbour*,void*) ;
 int neigh_connect (struct neighbour*) ;
 int neigh_del_timer (struct neighbour*) ;
 int neigh_invalidate (struct neighbour*) ;
 int neigh_release (struct neighbour*) ;
 int neigh_suspect (struct neighbour*) ;
 int neigh_update_ext_learned (struct neighbour*,int,int*) ;
 int neigh_update_gc_list (struct neighbour*) ;
 int neigh_update_hhs (struct neighbour*) ;
 int neigh_update_is_router (struct neighbour*,int,int*) ;
 int neigh_update_notify (struct neighbour*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct dst_entry* skb_dst (struct sk_buff*) ;
 int stub1 (struct neighbour*,struct sk_buff*) ;
 int trace_neigh_update (struct neighbour*,int const*,int,int,int) ;
 int trace_neigh_update_done (struct neighbour*,int) ;
 int write_lock_bh (int *) ;
 int write_seqlock (int *) ;
 int write_sequnlock (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int __neigh_update(struct neighbour *neigh, const u8 *lladdr,
     u8 new, u32 flags, u32 nlmsg_pid,
     struct netlink_ext_ack *extack)
{
 bool ext_learn_change = 0;
 u8 old;
 int err;
 int notify = 0;
 struct net_device *dev;
 int update_isrouter = 0;

 trace_neigh_update(neigh, lladdr, new, flags, nlmsg_pid);

 write_lock_bh(&neigh->lock);

 dev = neigh->dev;
 old = neigh->nud_state;
 err = -EPERM;

 if (!(flags & NEIGH_UPDATE_F_ADMIN) &&
     (old & (NUD_NOARP | NUD_PERMANENT)))
  goto out;
 if (neigh->dead) {
  NL_SET_ERR_MSG(extack, "Neighbor entry is now dead");
  goto out;
 }

 ext_learn_change = neigh_update_ext_learned(neigh, flags, &notify);

 if (!(new & NUD_VALID)) {
  neigh_del_timer(neigh);
  if (old & NUD_CONNECTED)
   neigh_suspect(neigh);
  neigh->nud_state = new;
  err = 0;
  notify = old & NUD_VALID;
  if ((old & (NUD_INCOMPLETE | NUD_PROBE)) &&
      (new & NUD_FAILED)) {
   neigh_invalidate(neigh);
   notify = 1;
  }
  goto out;
 }


 if (!dev->addr_len) {

  lladdr = neigh->ha;
 } else if (lladdr) {





  if ((old & NUD_VALID) &&
      !memcmp(lladdr, neigh->ha, dev->addr_len))
   lladdr = neigh->ha;
 } else {



  err = -EINVAL;
  if (!(old & NUD_VALID)) {
   NL_SET_ERR_MSG(extack, "No link layer address given");
   goto out;
  }
  lladdr = neigh->ha;
 }




 if (new & NUD_CONNECTED)
  neigh->confirmed = jiffies;




 err = 0;
 update_isrouter = flags & NEIGH_UPDATE_F_OVERRIDE_ISROUTER;
 if (old & NUD_VALID) {
  if (lladdr != neigh->ha && !(flags & NEIGH_UPDATE_F_OVERRIDE)) {
   update_isrouter = 0;
   if ((flags & NEIGH_UPDATE_F_WEAK_OVERRIDE) &&
       (old & NUD_CONNECTED)) {
    lladdr = neigh->ha;
    new = NUD_STALE;
   } else
    goto out;
  } else {
   if (lladdr == neigh->ha && new == NUD_STALE &&
       !(flags & NEIGH_UPDATE_F_ADMIN))
    new = old;
  }
 }





 if (new != old || lladdr != neigh->ha)
  neigh->updated = jiffies;

 if (new != old) {
  neigh_del_timer(neigh);
  if (new & NUD_PROBE)
   atomic_set(&neigh->probes, 0);
  if (new & NUD_IN_TIMER)
   neigh_add_timer(neigh, (jiffies +
      ((new & NUD_REACHABLE) ?
       neigh->parms->reachable_time :
       0)));
  neigh->nud_state = new;
  notify = 1;
 }

 if (lladdr != neigh->ha) {
  write_seqlock(&neigh->ha_lock);
  memcpy(&neigh->ha, lladdr, dev->addr_len);
  write_sequnlock(&neigh->ha_lock);
  neigh_update_hhs(neigh);
  if (!(new & NUD_CONNECTED))
   neigh->confirmed = jiffies -
          (NEIGH_VAR(neigh->parms, BASE_REACHABLE_TIME) << 1);
  notify = 1;
 }
 if (new == old)
  goto out;
 if (new & NUD_CONNECTED)
  neigh_connect(neigh);
 else
  neigh_suspect(neigh);
 if (!(old & NUD_VALID)) {
  struct sk_buff *skb;



  while (neigh->nud_state & NUD_VALID &&
         (skb = __skb_dequeue(&neigh->arp_queue)) != ((void*)0)) {
   struct dst_entry *dst = skb_dst(skb);
   struct neighbour *n2, *n1 = neigh;
   write_unlock_bh(&neigh->lock);

   rcu_read_lock();
   n2 = ((void*)0);
   if (dst) {
    n2 = dst_neigh_lookup_skb(dst, skb);
    if (n2)
     n1 = n2;
   }
   n1->output(n1, skb);
   if (n2)
    neigh_release(n2);
   rcu_read_unlock();

   write_lock_bh(&neigh->lock);
  }
  __skb_queue_purge(&neigh->arp_queue);
  neigh->arp_queue_len_bytes = 0;
 }
out:
 if (update_isrouter)
  neigh_update_is_router(neigh, flags, &notify);
 write_unlock_bh(&neigh->lock);

 if (((new ^ old) & NUD_PERMANENT) || ext_learn_change)
  neigh_update_gc_list(neigh);

 if (notify)
  neigh_update_notify(neigh, nlmsg_pid);

 trace_neigh_update_done(neigh, err);

 return err;
}
