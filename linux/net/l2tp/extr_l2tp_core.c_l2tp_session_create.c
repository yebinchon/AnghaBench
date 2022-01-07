
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct l2tp_tunnel {int tunnel_id; int version; int debug; } ;
struct l2tp_session_cfg {int peer_cookie_len; int * peer_cookie; int cookie_len; int * cookie; int l2specific_type; int reorder_timeout; int lns_mode; int recv_seq; int send_seq; int debug; int pw_type; } ;
struct l2tp_session {int session_id; int nr_max; int nr_window_size; int nr_oos_count_max; int reorder_skip; int ref_count; int build_header; int * peer_cookie; int peer_cookie_len; int * cookie; int cookie_len; int l2specific_type; int reorder_timeout; int lns_mode; int recv_seq; int send_seq; int debug; int pwtype; int global_hlist; int hlist; int reorder_q; int * name; scalar_t__ nr; void* peer_session_id; struct l2tp_tunnel* tunnel; int magic; } ;


 int ENOMEM ;
 struct l2tp_session* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int L2TP_HDR_VER_2 ;
 int L2TP_SESSION_MAGIC ;
 struct l2tp_session* kzalloc (int,int ) ;
 int l2tp_build_l2tpv2_header ;
 int l2tp_build_l2tpv3_header ;
 int l2tp_session_set_header_len (struct l2tp_session*,int ) ;
 int memcpy (int *,int *,int ) ;
 int refcount_set (int *,int) ;
 int skb_queue_head_init (int *) ;
 int sprintf (int *,char*,int,int) ;

struct l2tp_session *l2tp_session_create(int priv_size, struct l2tp_tunnel *tunnel, u32 session_id, u32 peer_session_id, struct l2tp_session_cfg *cfg)
{
 struct l2tp_session *session;

 session = kzalloc(sizeof(struct l2tp_session) + priv_size, GFP_KERNEL);
 if (session != ((void*)0)) {
  session->magic = L2TP_SESSION_MAGIC;
  session->tunnel = tunnel;

  session->session_id = session_id;
  session->peer_session_id = peer_session_id;
  session->nr = 0;
  if (tunnel->version == L2TP_HDR_VER_2)
   session->nr_max = 0xffff;
  else
   session->nr_max = 0xffffff;
  session->nr_window_size = session->nr_max / 2;
  session->nr_oos_count_max = 4;


  session->reorder_skip = 1;

  sprintf(&session->name[0], "sess %u/%u",
   tunnel->tunnel_id, session->session_id);

  skb_queue_head_init(&session->reorder_q);

  INIT_HLIST_NODE(&session->hlist);
  INIT_HLIST_NODE(&session->global_hlist);


  session->debug = tunnel->debug;

  if (cfg) {
   session->pwtype = cfg->pw_type;
   session->debug = cfg->debug;
   session->send_seq = cfg->send_seq;
   session->recv_seq = cfg->recv_seq;
   session->lns_mode = cfg->lns_mode;
   session->reorder_timeout = cfg->reorder_timeout;
   session->l2specific_type = cfg->l2specific_type;
   session->cookie_len = cfg->cookie_len;
   memcpy(&session->cookie[0], &cfg->cookie[0], cfg->cookie_len);
   session->peer_cookie_len = cfg->peer_cookie_len;
   memcpy(&session->peer_cookie[0], &cfg->peer_cookie[0], cfg->peer_cookie_len);
  }

  if (tunnel->version == L2TP_HDR_VER_2)
   session->build_header = l2tp_build_l2tpv2_header;
  else
   session->build_header = l2tp_build_l2tpv3_header;

  l2tp_session_set_header_len(session, tunnel->version);

  refcount_set(&session->ref_count, 1);

  return session;
 }

 return ERR_PTR(-ENOMEM);
}
