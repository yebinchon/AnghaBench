
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wimax_dev {int (* op_msg_from_user ) (struct wimax_dev*,char*,void*,size_t,struct genl_info*) ;int net_dev; int mutex; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_pid; int nlmsg_seq; int nlmsg_flags; int nlmsg_type; int nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; struct nlmsghdr* nlhdr; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEDIUM ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 size_t WIMAX_GNL_MSG_DATA ;
 size_t WIMAX_GNL_MSG_IFIDX ;
 size_t WIMAX_GNL_MSG_PIPE_NAME ;
 int d_dump (int,struct device*,void*,size_t) ;
 int d_fnend (int,int *,char*,struct sk_buff*,struct genl_info*,int) ;
 int d_fnstart (int,int *,char*,struct sk_buff*,struct genl_info*) ;
 int d_printf (int,struct device*,char*,size_t,...) ;
 int dev_err (struct device*,char*) ;
 int dev_put (int ) ;
 int kfree (char*) ;
 char* kstrndup (void*,size_t,int ) ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 void* nla_data (struct nlattr*) ;
 int nla_get_u32 (struct nlattr*) ;
 size_t nla_len (struct nlattr*) ;
 int pr_err (char*) ;
 int stub1 (struct wimax_dev*,char*,void*,size_t,struct genl_info*) ;
 struct wimax_dev* wimax_dev_get_by_genl_info (struct genl_info*,int) ;
 int wimax_dev_is_ready (struct wimax_dev*) ;
 struct device* wimax_dev_to_dev (struct wimax_dev*) ;

int wimax_gnl_doit_msg_from_user(struct sk_buff *skb, struct genl_info *info)
{
 int result, ifindex;
 struct wimax_dev *wimax_dev;
 struct device *dev;
 struct nlmsghdr *nlh = info->nlhdr;
 char *pipe_name;
 void *msg_buf;
 size_t msg_len;

 might_sleep();
 d_fnstart(3, ((void*)0), "(skb %p info %p)\n", skb, info);
 result = -ENODEV;
 if (info->attrs[WIMAX_GNL_MSG_IFIDX] == ((void*)0)) {
  pr_err("WIMAX_GNL_MSG_FROM_USER: can't find IFIDX attribute\n");
  goto error_no_wimax_dev;
 }
 ifindex = nla_get_u32(info->attrs[WIMAX_GNL_MSG_IFIDX]);
 wimax_dev = wimax_dev_get_by_genl_info(info, ifindex);
 if (wimax_dev == ((void*)0))
  goto error_no_wimax_dev;
 dev = wimax_dev_to_dev(wimax_dev);


 result = -EINVAL;
 if (info->attrs[WIMAX_GNL_MSG_DATA] == ((void*)0)) {
  dev_err(dev, "WIMAX_GNL_MSG_FROM_USER: can't find MSG_DATA "
   "attribute\n");
  goto error_no_data;
 }
 msg_buf = nla_data(info->attrs[WIMAX_GNL_MSG_DATA]);
 msg_len = nla_len(info->attrs[WIMAX_GNL_MSG_DATA]);

 if (info->attrs[WIMAX_GNL_MSG_PIPE_NAME] == ((void*)0))
  pipe_name = ((void*)0);
 else {
  struct nlattr *attr = info->attrs[WIMAX_GNL_MSG_PIPE_NAME];
  size_t attr_len = nla_len(attr);

  result = -ENOMEM;
  pipe_name = kstrndup(nla_data(attr), attr_len + 1, GFP_KERNEL);
  if (pipe_name == ((void*)0))
   goto error_alloc;
  pipe_name[attr_len] = 0;
 }
 mutex_lock(&wimax_dev->mutex);
 result = wimax_dev_is_ready(wimax_dev);
 if (result == -ENOMEDIUM)
  result = 0;
 if (result < 0)
  goto error_not_ready;
 result = -ENOSYS;
 if (wimax_dev->op_msg_from_user == ((void*)0))
  goto error_noop;

 d_printf(1, dev,
   "CRX: nlmsghdr len %u type %u flags 0x%04x seq 0x%x pid %u\n",
   nlh->nlmsg_len, nlh->nlmsg_type, nlh->nlmsg_flags,
   nlh->nlmsg_seq, nlh->nlmsg_pid);
 d_printf(1, dev, "CRX: wimax message %zu bytes\n", msg_len);
 d_dump(2, dev, msg_buf, msg_len);

 result = wimax_dev->op_msg_from_user(wimax_dev, pipe_name,
          msg_buf, msg_len, info);
error_noop:
error_not_ready:
 mutex_unlock(&wimax_dev->mutex);
error_alloc:
 kfree(pipe_name);
error_no_data:
 dev_put(wimax_dev->net_dev);
error_no_wimax_dev:
 d_fnend(3, ((void*)0), "(skb %p info %p) = %d\n", skb, info, result);
 return result;
}
