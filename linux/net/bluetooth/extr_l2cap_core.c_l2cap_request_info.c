
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_info_req {int type; } ;
struct l2cap_conn {int info_state; int info_ident; int info_timer; } ;
typedef int req ;


 int L2CAP_INFO_FEAT_MASK_REQ_SENT ;
 int L2CAP_INFO_REQ ;
 int L2CAP_INFO_TIMEOUT ;
 int L2CAP_IT_FEAT_MASK ;
 int cpu_to_le16 (int ) ;
 int l2cap_get_ident (struct l2cap_conn*) ;
 int l2cap_send_cmd (struct l2cap_conn*,int ,int ,int,struct l2cap_info_req*) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void l2cap_request_info(struct l2cap_conn *conn)
{
 struct l2cap_info_req req;

 if (conn->info_state & L2CAP_INFO_FEAT_MASK_REQ_SENT)
  return;

 req.type = cpu_to_le16(L2CAP_IT_FEAT_MASK);

 conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_SENT;
 conn->info_ident = l2cap_get_ident(conn);

 schedule_delayed_work(&conn->info_timer, L2CAP_INFO_TIMEOUT);

 l2cap_send_cmd(conn, conn->info_ident, L2CAP_INFO_REQ,
         sizeof(req), &req);
}
