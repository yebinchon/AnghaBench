
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct socket {int sk; } ;
struct l2cap_conn {int dummy; } ;
struct l2cap_chan {int dst; scalar_t__ conn; } ;
struct hidp_session {int user; } ;
struct hidp_connadd_req {int flags; } ;
struct TYPE_2__ {struct l2cap_chan* chan; } ;


 int BIT (int ) ;
 int EBADFD ;
 int EINVAL ;
 int HIDP_BOOT_PROTOCOL_MODE ;
 int HIDP_VIRTUAL_CABLE_UNPLUG ;
 int hidp_session_new (struct hidp_session**,int *,struct socket*,struct socket*,struct hidp_connadd_req const*,struct l2cap_conn*) ;
 int hidp_session_put (struct hidp_session*) ;
 int hidp_verify_sockets (struct socket*,struct socket*) ;
 int l2cap_chan_lock (struct l2cap_chan*) ;
 int l2cap_chan_unlock (struct l2cap_chan*) ;
 struct l2cap_conn* l2cap_conn_get (scalar_t__) ;
 int l2cap_conn_put (struct l2cap_conn*) ;
 TYPE_1__* l2cap_pi (int ) ;
 int l2cap_register_user (struct l2cap_conn*,int *) ;

int hidp_connection_add(const struct hidp_connadd_req *req,
   struct socket *ctrl_sock,
   struct socket *intr_sock)
{
 u32 valid_flags = BIT(HIDP_VIRTUAL_CABLE_UNPLUG) |
     BIT(HIDP_BOOT_PROTOCOL_MODE);
 struct hidp_session *session;
 struct l2cap_conn *conn;
 struct l2cap_chan *chan;
 int ret;

 ret = hidp_verify_sockets(ctrl_sock, intr_sock);
 if (ret)
  return ret;

 if (req->flags & ~valid_flags)
  return -EINVAL;

 chan = l2cap_pi(ctrl_sock->sk)->chan;
 conn = ((void*)0);
 l2cap_chan_lock(chan);
 if (chan->conn)
  conn = l2cap_conn_get(chan->conn);
 l2cap_chan_unlock(chan);

 if (!conn)
  return -EBADFD;

 ret = hidp_session_new(&session, &chan->dst, ctrl_sock,
          intr_sock, req, conn);
 if (ret)
  goto out_conn;

 ret = l2cap_register_user(conn, &session->user);
 if (ret)
  goto out_session;

 ret = 0;

out_session:
 hidp_session_put(session);
out_conn:
 l2cap_conn_put(conn);
 return ret;
}
