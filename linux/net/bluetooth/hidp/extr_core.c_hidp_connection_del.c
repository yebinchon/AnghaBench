
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hidp_session {int user; int conn; } ;
struct hidp_conndel_req {int flags; int bdaddr; } ;


 int BIT (int ) ;
 int EINVAL ;
 int ENOENT ;
 int HIDP_CTRL_VIRTUAL_CABLE_UNPLUG ;
 int HIDP_TRANS_HID_CONTROL ;
 int HIDP_VIRTUAL_CABLE_UNPLUG ;
 int hidp_send_ctrl_message (struct hidp_session*,int,int *,int ) ;
 struct hidp_session* hidp_session_find (int *) ;
 int hidp_session_put (struct hidp_session*) ;
 int l2cap_unregister_user (int ,int *) ;

int hidp_connection_del(struct hidp_conndel_req *req)
{
 u32 valid_flags = BIT(HIDP_VIRTUAL_CABLE_UNPLUG);
 struct hidp_session *session;

 if (req->flags & ~valid_flags)
  return -EINVAL;

 session = hidp_session_find(&req->bdaddr);
 if (!session)
  return -ENOENT;

 if (req->flags & BIT(HIDP_VIRTUAL_CABLE_UNPLUG))
  hidp_send_ctrl_message(session,
           HIDP_TRANS_HID_CONTROL |
             HIDP_CTRL_VIRTUAL_CABLE_UNPLUG,
           ((void*)0), 0);
 else
  l2cap_unregister_user(session->conn, &session->user);

 hidp_session_put(session);

 return 0;
}
