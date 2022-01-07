
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pgn; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct j1939_session {int err; scalar_t__ sk; TYPE_2__ skcb; int transmission; int state; struct j1939_priv* priv; } ;
struct j1939_priv {int dummy; } ;
typedef enum j1939_xtp_abort { ____Placeholder_j1939_xtp_abort } j1939_xtp_abort ;


 int J1939_SESSION_WAITING_ABORT ;
 int WARN_ON_ONCE (int) ;
 int j1939_cb_is_broadcast (TYPE_2__*) ;
 int j1939_sk_send_loop_abort (scalar_t__,int ) ;
 int j1939_xtp_abort_to_errno (struct j1939_priv*,int) ;
 int j1939_xtp_tx_abort (struct j1939_priv*,TYPE_2__*,int,int,int ) ;

__attribute__((used)) static void j1939_session_cancel(struct j1939_session *session,
     enum j1939_xtp_abort err)
{
 struct j1939_priv *priv = session->priv;

 WARN_ON_ONCE(!err);

 session->err = j1939_xtp_abort_to_errno(priv, err);

 if (!j1939_cb_is_broadcast(&session->skcb)) {
  session->state = J1939_SESSION_WAITING_ABORT;
  j1939_xtp_tx_abort(priv, &session->skcb,
       !session->transmission,
       err, session->skcb.addr.pgn);
 }

 if (session->sk)
  j1939_sk_send_loop_abort(session->sk, session->err);
}
