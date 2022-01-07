
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct l2tp_session {int reorder_timeout; void* lns_mode; TYPE_1__* tunnel; void* send_seq; void* recv_seq; int debug; } ;
struct genl_info {scalar_t__* attrs; } ;
struct TYPE_2__ {int version; } ;


 int ENODEV ;
 size_t L2TP_ATTR_DEBUG ;
 size_t L2TP_ATTR_LNS_MODE ;
 size_t L2TP_ATTR_RECV_SEQ ;
 size_t L2TP_ATTR_RECV_TIMEOUT ;
 size_t L2TP_ATTR_SEND_SEQ ;
 int L2TP_CMD_SESSION_MODIFY ;
 int l2tp_nl_family ;
 struct l2tp_session* l2tp_nl_session_get (struct genl_info*) ;
 int l2tp_session_dec_refcount (struct l2tp_session*) ;
 int l2tp_session_notify (int *,struct genl_info*,struct l2tp_session*,int ) ;
 int l2tp_session_set_header_len (struct l2tp_session*,int ) ;
 int nla_get_msecs (scalar_t__) ;
 int nla_get_u32 (scalar_t__) ;
 void* nla_get_u8 (scalar_t__) ;

__attribute__((used)) static int l2tp_nl_cmd_session_modify(struct sk_buff *skb, struct genl_info *info)
{
 int ret = 0;
 struct l2tp_session *session;

 session = l2tp_nl_session_get(info);
 if (session == ((void*)0)) {
  ret = -ENODEV;
  goto out;
 }

 if (info->attrs[L2TP_ATTR_DEBUG])
  session->debug = nla_get_u32(info->attrs[L2TP_ATTR_DEBUG]);

 if (info->attrs[L2TP_ATTR_RECV_SEQ])
  session->recv_seq = nla_get_u8(info->attrs[L2TP_ATTR_RECV_SEQ]);

 if (info->attrs[L2TP_ATTR_SEND_SEQ]) {
  session->send_seq = nla_get_u8(info->attrs[L2TP_ATTR_SEND_SEQ]);
  l2tp_session_set_header_len(session, session->tunnel->version);
 }

 if (info->attrs[L2TP_ATTR_LNS_MODE])
  session->lns_mode = nla_get_u8(info->attrs[L2TP_ATTR_LNS_MODE]);

 if (info->attrs[L2TP_ATTR_RECV_TIMEOUT])
  session->reorder_timeout = nla_get_msecs(info->attrs[L2TP_ATTR_RECV_TIMEOUT]);

 ret = l2tp_session_notify(&l2tp_nl_family, info,
      session, L2TP_CMD_SESSION_MODIFY);

 l2tp_session_dec_refcount(session);

out:
 return ret;
}
