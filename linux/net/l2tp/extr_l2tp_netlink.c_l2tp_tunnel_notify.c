
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct l2tp_tunnel {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; } ;
struct genl_family {int dummy; } ;


 int ENOMEM ;
 int ESRCH ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int NLMSG_DEFAULT_SIZE ;
 int NLM_F_ACK ;
 int genlmsg_multicast_allns (struct genl_family*,struct sk_buff*,int ,int ,int ) ;
 int l2tp_nl_tunnel_send (struct sk_buff*,int ,int ,int ,struct l2tp_tunnel*,int ) ;
 int nlmsg_free (struct sk_buff*) ;
 struct sk_buff* nlmsg_new (int ,int ) ;

__attribute__((used)) static int l2tp_tunnel_notify(struct genl_family *family,
         struct genl_info *info,
         struct l2tp_tunnel *tunnel,
         u8 cmd)
{
 struct sk_buff *msg;
 int ret;

 msg = nlmsg_new(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
 if (!msg)
  return -ENOMEM;

 ret = l2tp_nl_tunnel_send(msg, info->snd_portid, info->snd_seq,
      NLM_F_ACK, tunnel, cmd);

 if (ret >= 0) {
  ret = genlmsg_multicast_allns(family, msg, 0, 0, GFP_ATOMIC);

  if (ret == -ESRCH)
   ret = 0;
  return ret;
 }

 nlmsg_free(msg);

 return ret;
}
