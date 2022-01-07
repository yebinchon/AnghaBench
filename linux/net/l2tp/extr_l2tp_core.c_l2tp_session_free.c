
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2tp_tunnel {scalar_t__ magic; } ;
struct l2tp_session {int ref_count; struct l2tp_tunnel* tunnel; } ;


 int BUG_ON (int) ;
 scalar_t__ L2TP_TUNNEL_MAGIC ;
 int kfree (struct l2tp_session*) ;
 int l2tp_tunnel_dec_refcount (struct l2tp_tunnel*) ;
 scalar_t__ refcount_read (int *) ;

void l2tp_session_free(struct l2tp_session *session)
{
 struct l2tp_tunnel *tunnel = session->tunnel;

 BUG_ON(refcount_read(&session->ref_count) != 0);

 if (tunnel) {
  BUG_ON(tunnel->magic != L2TP_TUNNEL_MAGIC);
  l2tp_tunnel_dec_refcount(tunnel);
 }

 kfree(session);
}
