
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct l2tp_session {int dummy; } ;
struct genl_info {int snd_portid; int snd_seq; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int L2TP_CMD_SESSION_GET ;
 int NLMSG_DEFAULT_SIZE ;
 int genl_info_net (struct genl_info*) ;
 int genlmsg_unicast (int ,struct sk_buff*,int ) ;
 struct l2tp_session* l2tp_nl_session_get (struct genl_info*) ;
 int l2tp_nl_session_send (struct sk_buff*,int ,int ,int ,struct l2tp_session*,int ) ;
 int l2tp_session_dec_refcount (struct l2tp_session*) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int l2tp_nl_cmd_session_get(struct sk_buff *skb, struct genl_info *info)
{
 struct l2tp_session *session;
 struct sk_buff *msg;
 int ret;

 session = l2tp_nl_session_get(info);
 if (session == ((void*)0)) {
  ret = -ENODEV;
  goto err;
 }

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg) {
  ret = -ENOMEM;
  goto err_ref;
 }

 ret = l2tp_nl_session_send(msg, info->snd_portid, info->snd_seq,
       0, session, L2TP_CMD_SESSION_GET);
 if (ret < 0)
  goto err_ref_msg;

 ret = genlmsg_unicast(genl_info_net(info), msg, info->snd_portid);

 l2tp_session_dec_refcount(session);

 return ret;

err_ref_msg:
 nlmsg_free(msg);
err_ref:
 l2tp_session_dec_refcount(session);
err:
 return ret;
}
