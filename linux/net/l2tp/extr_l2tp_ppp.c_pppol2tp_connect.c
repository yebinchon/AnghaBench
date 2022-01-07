
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_state; struct l2tp_tunnel* sk_user_data; } ;
struct TYPE_2__ {int mtu; int * ops; struct sock* private; int hdrlen; } ;
struct pppox_sock {TYPE_1__ chan; } ;
struct pppol2tp_session {int sk_lock; int sk; scalar_t__ __sk; } ;
struct l2tp_tunnel_cfg {int debug; int encap; } ;
struct l2tp_tunnel {scalar_t__ peer_tunnel_id; scalar_t__ pwtype; scalar_t__ session_id; scalar_t__ peer_session_id; int name; int * sock; } ;
struct l2tp_session_cfg {scalar_t__ pw_type; int member_0; } ;
struct l2tp_session {scalar_t__ peer_tunnel_id; scalar_t__ pwtype; scalar_t__ session_id; scalar_t__ peer_session_id; int name; int * sock; } ;
struct l2tp_connect_info {scalar_t__ fd; scalar_t__ peer_tunnel_id; int peer_session_id; int session_id; int tunnel_id; int version; } ;


 int EALREADY ;
 int EBADF ;
 int EBUSY ;
 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int EPROTOTYPE ;
 scalar_t__ IS_ERR (struct l2tp_tunnel*) ;
 int L2TP_ENCAPTYPE_UDP ;
 int L2TP_MSG_CONTROL ;
 scalar_t__ L2TP_PWTYPE_PPP ;
 int PPPOL2TP_L2TP_HDR_SIZE_NOSEQ ;
 int PPPOX_CONNECTED ;
 int PTR_ERR (struct l2tp_tunnel*) ;
 int kfree (struct l2tp_tunnel*) ;
 int l2tp_info (struct l2tp_tunnel*,int ,char*,int ) ;
 struct l2tp_tunnel* l2tp_session_create (int,struct l2tp_tunnel*,int ,int ,struct l2tp_session_cfg*) ;
 int l2tp_session_dec_refcount (struct l2tp_tunnel*) ;
 int l2tp_session_delete (struct l2tp_tunnel*) ;
 int l2tp_session_inc_refcount (struct l2tp_tunnel*) ;
 struct pppol2tp_session* l2tp_session_priv (struct l2tp_tunnel*) ;
 int l2tp_session_register (struct l2tp_tunnel*,struct l2tp_tunnel*) ;
 int l2tp_tunnel_create (int ,scalar_t__,int ,int ,scalar_t__,struct l2tp_tunnel_cfg*,struct l2tp_tunnel**) ;
 int l2tp_tunnel_dec_refcount (struct l2tp_tunnel*) ;
 int l2tp_tunnel_delete (struct l2tp_tunnel*) ;
 struct l2tp_tunnel* l2tp_tunnel_get (int ,int ) ;
 struct l2tp_tunnel* l2tp_tunnel_get_session (struct l2tp_tunnel*,int ) ;
 int l2tp_tunnel_inc_refcount (struct l2tp_tunnel*) ;
 int l2tp_tunnel_register (struct l2tp_tunnel*,int ,struct l2tp_tunnel_cfg*) ;
 int lock_sock (struct sock*) ;
 int lockdep_is_held (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ppp_register_net_channel (int ,TYPE_1__*) ;
 int pppol2tp_chan_ops ;
 int pppol2tp_session_init (struct l2tp_tunnel*) ;
 int pppol2tp_sockaddr_get_info (struct sockaddr*,int,struct l2tp_connect_info*) ;
 int pppol2tp_tunnel_mtu (struct l2tp_tunnel*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 int rcu_assign_pointer (int ,struct sock*) ;
 scalar_t__ rcu_dereference_protected (int ,int ) ;
 int release_sock (struct sock*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int pppol2tp_connect(struct socket *sock, struct sockaddr *uservaddr,
       int sockaddr_len, int flags)
{
 struct sock *sk = sock->sk;
 struct pppox_sock *po = pppox_sk(sk);
 struct l2tp_session *session = ((void*)0);
 struct l2tp_connect_info info;
 struct l2tp_tunnel *tunnel;
 struct pppol2tp_session *ps;
 struct l2tp_session_cfg cfg = { 0, };
 bool drop_refcnt = 0;
 bool drop_tunnel = 0;
 bool new_session = 0;
 bool new_tunnel = 0;
 int error;

 error = pppol2tp_sockaddr_get_info(uservaddr, sockaddr_len, &info);
 if (error < 0)
  return error;

 lock_sock(sk);


 error = -EBUSY;
 if (sk->sk_state & PPPOX_CONNECTED)
  goto end;


 error = -EALREADY;
 if (sk->sk_user_data)
  goto end;


 error = -EINVAL;
 if (!info.tunnel_id)
  goto end;

 tunnel = l2tp_tunnel_get(sock_net(sk), info.tunnel_id);
 if (tunnel)
  drop_tunnel = 1;





 if (!info.session_id && !info.peer_session_id) {
  if (tunnel == ((void*)0)) {
   struct l2tp_tunnel_cfg tcfg = {
    .encap = L2TP_ENCAPTYPE_UDP,
    .debug = 0,
   };




   if (info.fd < 0) {
    error = -EBADF;
    goto end;
   }

   error = l2tp_tunnel_create(sock_net(sk), info.fd,
         info.version,
         info.tunnel_id,
         info.peer_tunnel_id, &tcfg,
         &tunnel);
   if (error < 0)
    goto end;

   l2tp_tunnel_inc_refcount(tunnel);
   error = l2tp_tunnel_register(tunnel, sock_net(sk),
           &tcfg);
   if (error < 0) {
    kfree(tunnel);
    goto end;
   }
   drop_tunnel = 1;
   new_tunnel = 1;
  }
 } else {

  error = -ENOENT;
  if (tunnel == ((void*)0))
   goto end;


  if (tunnel->sock == ((void*)0))
   goto end;
 }

 if (tunnel->peer_tunnel_id == 0)
  tunnel->peer_tunnel_id = info.peer_tunnel_id;

 session = l2tp_tunnel_get_session(tunnel, info.session_id);
 if (session) {
  drop_refcnt = 1;

  if (session->pwtype != L2TP_PWTYPE_PPP) {
   error = -EPROTOTYPE;
   goto end;
  }

  ps = l2tp_session_priv(session);




  mutex_lock(&ps->sk_lock);
  if (rcu_dereference_protected(ps->sk,
           lockdep_is_held(&ps->sk_lock)) ||
      ps->__sk) {
   mutex_unlock(&ps->sk_lock);
   error = -EEXIST;
   goto end;
  }
 } else {
  cfg.pw_type = L2TP_PWTYPE_PPP;

  session = l2tp_session_create(sizeof(struct pppol2tp_session),
           tunnel, info.session_id,
           info.peer_session_id, &cfg);
  if (IS_ERR(session)) {
   error = PTR_ERR(session);
   goto end;
  }

  pppol2tp_session_init(session);
  ps = l2tp_session_priv(session);
  l2tp_session_inc_refcount(session);

  mutex_lock(&ps->sk_lock);
  error = l2tp_session_register(session, tunnel);
  if (error < 0) {
   mutex_unlock(&ps->sk_lock);
   kfree(session);
   goto end;
  }
  drop_refcnt = 1;
  new_session = 1;
 }






 if ((session->session_id == 0) &&
     (session->peer_session_id == 0)) {
  error = 0;
  goto out_no_ppp;
 }





 po->chan.hdrlen = PPPOL2TP_L2TP_HDR_SIZE_NOSEQ;

 po->chan.private = sk;
 po->chan.ops = &pppol2tp_chan_ops;
 po->chan.mtu = pppol2tp_tunnel_mtu(tunnel);

 error = ppp_register_net_channel(sock_net(sk), &po->chan);
 if (error) {
  mutex_unlock(&ps->sk_lock);
  goto end;
 }

out_no_ppp:

 sk->sk_user_data = session;
 rcu_assign_pointer(ps->sk, sk);
 mutex_unlock(&ps->sk_lock);





 drop_refcnt = 0;

 sk->sk_state = PPPOX_CONNECTED;
 l2tp_info(session, L2TP_MSG_CONTROL, "%s: created\n",
    session->name);

end:
 if (error) {
  if (new_session)
   l2tp_session_delete(session);
  if (new_tunnel)
   l2tp_tunnel_delete(tunnel);
 }
 if (drop_refcnt)
  l2tp_session_dec_refcount(session);
 if (drop_tunnel)
  l2tp_tunnel_dec_refcount(tunnel);
 release_sock(sk);

 return error;
}
