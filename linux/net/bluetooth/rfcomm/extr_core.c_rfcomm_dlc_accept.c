
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sock {int dummy; } ;
struct rfcomm_dlc {int v24_sig; int dlci; TYPE_3__* session; scalar_t__ role_switch; int (* state_change ) (struct rfcomm_dlc*,int ) ;int state; } ;
struct l2cap_conn {int hcon; } ;
struct TYPE_9__ {TYPE_1__* chan; } ;
struct TYPE_8__ {TYPE_2__* sock; } ;
struct TYPE_7__ {struct sock* sk; } ;
struct TYPE_6__ {struct l2cap_conn* conn; } ;


 int BT_CONNECTED ;
 int BT_DBG (char*,struct rfcomm_dlc*) ;
 int hci_conn_switch_role (int ,int) ;
 TYPE_5__* l2cap_pi (struct sock*) ;
 int rfcomm_dlc_clear_timer (struct rfcomm_dlc*) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 int rfcomm_send_msc (TYPE_3__*,int,int ,int ) ;
 int rfcomm_send_ua (TYPE_3__*,int ) ;
 int stub1 (struct rfcomm_dlc*,int ) ;

void rfcomm_dlc_accept(struct rfcomm_dlc *d)
{
 struct sock *sk = d->session->sock->sk;
 struct l2cap_conn *conn = l2cap_pi(sk)->chan->conn;

 BT_DBG("dlc %p", d);

 rfcomm_send_ua(d->session, d->dlci);

 rfcomm_dlc_clear_timer(d);

 rfcomm_dlc_lock(d);
 d->state = BT_CONNECTED;
 d->state_change(d, 0);
 rfcomm_dlc_unlock(d);

 if (d->role_switch)
  hci_conn_switch_role(conn->hcon, 0x00);

 rfcomm_send_msc(d->session, 1, d->dlci, d->v24_sig);
}
