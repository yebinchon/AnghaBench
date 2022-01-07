
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct genl_info {int snd_seq; int snd_portid; scalar_t__* attrs; } ;
struct genl_family {int netnsok; } ;


 size_t CTRL_ATTR_FAMILY_ID ;
 size_t CTRL_ATTR_FAMILY_NAME ;
 int CTRL_CMD_NEWFAMILY ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int NETLINK_GENERIC ;
 int PF_NETLINK ;
 int PTR_ERR (struct sk_buff*) ;
 int cb_lock ;
 struct sk_buff* ctrl_build_family_msg (struct genl_family const*,int ,int ,int ) ;
 int down_read (int *) ;
 struct genl_family* genl_family_find_byid (int ) ;
 struct genl_family* genl_family_find_byname (char*) ;
 int genl_info_net (struct genl_info*) ;
 int genl_lock () ;
 int genl_unlock () ;
 int genlmsg_reply (struct sk_buff*,struct genl_info*) ;
 int init_net ;
 int net_eq (int ,int *) ;
 char* nla_data (scalar_t__) ;
 int nla_get_u16 (scalar_t__) ;
 int request_module (char*,int ,int ,char*) ;
 int up_read (int *) ;

__attribute__((used)) static int ctrl_getfamily(struct sk_buff *skb, struct genl_info *info)
{
 struct sk_buff *msg;
 const struct genl_family *res = ((void*)0);
 int err = -EINVAL;

 if (info->attrs[CTRL_ATTR_FAMILY_ID]) {
  u16 id = nla_get_u16(info->attrs[CTRL_ATTR_FAMILY_ID]);
  res = genl_family_find_byid(id);
  err = -ENOENT;
 }

 if (info->attrs[CTRL_ATTR_FAMILY_NAME]) {
  char *name;

  name = nla_data(info->attrs[CTRL_ATTR_FAMILY_NAME]);
  res = genl_family_find_byname(name);
  err = -ENOENT;
 }

 if (res == ((void*)0))
  return err;

 if (!res->netnsok && !net_eq(genl_info_net(info), &init_net)) {

  return -ENOENT;
 }

 msg = ctrl_build_family_msg(res, info->snd_portid, info->snd_seq,
        CTRL_CMD_NEWFAMILY);
 if (IS_ERR(msg))
  return PTR_ERR(msg);

 return genlmsg_reply(msg, info);
}
