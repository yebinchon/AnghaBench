
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct sk_buff {int dummy; } ;
struct l2tp_session {size_t pwtype; } ;
struct genl_info {int dummy; } ;
struct TYPE_2__ {int (* session_delete ) (struct l2tp_session*) ;} ;


 int ENODEV ;
 int L2TP_CMD_SESSION_DELETE ;
 size_t __L2TP_PWTYPE_MAX ;
 TYPE_1__** l2tp_nl_cmd_ops ;
 int l2tp_nl_family ;
 struct l2tp_session* l2tp_nl_session_get (struct genl_info*) ;
 int l2tp_session_dec_refcount (struct l2tp_session*) ;
 int l2tp_session_notify (int *,struct genl_info*,struct l2tp_session*,int ) ;
 int stub1 (struct l2tp_session*) ;

__attribute__((used)) static int l2tp_nl_cmd_session_delete(struct sk_buff *skb, struct genl_info *info)
{
 int ret = 0;
 struct l2tp_session *session;
 u16 pw_type;

 session = l2tp_nl_session_get(info);
 if (session == ((void*)0)) {
  ret = -ENODEV;
  goto out;
 }

 l2tp_session_notify(&l2tp_nl_family, info,
       session, L2TP_CMD_SESSION_DELETE);

 pw_type = session->pwtype;
 if (pw_type < __L2TP_PWTYPE_MAX)
  if (l2tp_nl_cmd_ops[pw_type] && l2tp_nl_cmd_ops[pw_type]->session_delete)
   ret = (*l2tp_nl_cmd_ops[pw_type]->session_delete)(session);

 l2tp_session_dec_refcount(session);

out:
 return ret;
}
