
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int len; } ;
struct tipc_monitor {int dom_gen; int lock; TYPE_1__ cache; } ;
struct tipc_mon_state {int acked_gen; int peer_gen; } ;
struct tipc_mon_domain {void* ack_gen; scalar_t__ member_cnt; void* gen; void* len; } ;
struct net {int dummy; } ;


 int dom_rec_len (struct tipc_mon_domain*,int ) ;
 void* htons (int) ;
 scalar_t__ likely (int) ;
 int memcpy (void*,TYPE_1__*,int) ;
 int ntohs (int ) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int tipc_mon_is_active (struct net*,struct tipc_monitor*) ;
 struct tipc_monitor* tipc_monitor (struct net*,int) ;

void tipc_mon_prep(struct net *net, void *data, int *dlen,
     struct tipc_mon_state *state, int bearer_id)
{
 struct tipc_monitor *mon = tipc_monitor(net, bearer_id);
 struct tipc_mon_domain *dom = data;
 u16 gen = mon->dom_gen;
 u16 len;


 if (!tipc_mon_is_active(net, mon)) {
  dom->len = 0;
  return;
 }


 if (likely(state->acked_gen == gen)) {
  len = dom_rec_len(dom, 0);
  *dlen = len;
  dom->len = htons(len);
  dom->gen = htons(gen);
  dom->ack_gen = htons(state->peer_gen);
  dom->member_cnt = 0;
  return;
 }

 read_lock_bh(&mon->lock);
 len = ntohs(mon->cache.len);
 *dlen = len;
 memcpy(data, &mon->cache, len);
 read_unlock_bh(&mon->lock);
 dom->ack_gen = htons(state->peer_gen);
}
