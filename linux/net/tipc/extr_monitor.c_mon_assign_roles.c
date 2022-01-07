
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_peer {int is_local; int is_head; int is_up; int applied; } ;
struct tipc_monitor {int list_gen; struct tipc_peer* self; } ;


 struct tipc_peer* peer_nxt (struct tipc_peer*) ;

__attribute__((used)) static void mon_assign_roles(struct tipc_monitor *mon, struct tipc_peer *head)
{
 struct tipc_peer *peer = peer_nxt(head);
 struct tipc_peer *self = mon->self;
 int i = 0;

 for (; peer != self; peer = peer_nxt(peer)) {
  peer->is_local = 0;


  if (i++ < head->applied) {
   peer->is_head = 0;
   if (head == self)
    peer->is_local = 1;
   continue;
  }

  if (!peer->is_up)
   continue;
  if (peer->is_head)
   break;
  head = peer;
  head->is_head = 1;
  i = 0;
 }
 mon->list_gen++;
}
