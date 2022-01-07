
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppol2tp_ioc_stats {int session_id; } ;
struct l2tp_tunnel {int stats; } ;
struct l2tp_session {scalar_t__ pwtype; int stats; } ;


 int EBADR ;
 scalar_t__ L2TP_PWTYPE_PPP ;
 int l2tp_session_dec_refcount (struct l2tp_session*) ;
 struct l2tp_session* l2tp_tunnel_get_session (struct l2tp_tunnel*,int ) ;
 int pppol2tp_copy_stats (struct pppol2tp_ioc_stats*,int *) ;

__attribute__((used)) static int pppol2tp_tunnel_copy_stats(struct pppol2tp_ioc_stats *stats,
          struct l2tp_tunnel *tunnel)
{
 struct l2tp_session *session;

 if (!stats->session_id) {
  pppol2tp_copy_stats(stats, &tunnel->stats);
  return 0;
 }




 session = l2tp_tunnel_get_session(tunnel, stats->session_id);
 if (!session)
  return -EBADR;

 if (session->pwtype != L2TP_PWTYPE_PPP) {
  l2tp_session_dec_refcount(session);
  return -EBADR;
 }

 pppol2tp_copy_stats(stats, &session->stats);
 l2tp_session_dec_refcount(session);

 return 0;
}
