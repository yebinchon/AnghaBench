
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tipc_nl_compat_msg {int dst_sk; } ;
struct tipc_nl_compat_cmd_doit {int (* transcode ) (struct tipc_nl_compat_cmd_doit*,struct sk_buff*,struct tipc_nl_compat_msg*) ;int (* doit ) (struct sk_buff*,struct genl_info*) ;} ;
struct sk_buff {int sk; int len; scalar_t__ data; } ;
struct nlattr {int dummy; } ;
struct genl_info {struct nlattr** attrs; } ;
typedef int info ;
struct TYPE_2__ {scalar_t__ maxattr; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NLMSG_GOODSIZE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 int kfree (struct nlattr**) ;
 int kfree_skb (struct sk_buff*) ;
 struct nlattr** kmalloc_array (scalar_t__,int,int ) ;
 int memset (struct genl_info*,int ,int) ;
 int nla_parse_deprecated (struct nlattr**,scalar_t__,struct nlattr const*,int ,int *,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct tipc_nl_compat_cmd_doit*,struct sk_buff*,struct tipc_nl_compat_msg*) ;
 int stub2 (struct sk_buff*,struct genl_info*) ;
 TYPE_1__ tipc_genl_family ;

__attribute__((used)) static int __tipc_nl_compat_doit(struct tipc_nl_compat_cmd_doit *cmd,
     struct tipc_nl_compat_msg *msg)
{
 int err;
 struct sk_buff *doit_buf;
 struct sk_buff *trans_buf;
 struct nlattr **attrbuf;
 struct genl_info info;

 trans_buf = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!trans_buf)
  return -ENOMEM;

 attrbuf = kmalloc_array(tipc_genl_family.maxattr + 1,
    sizeof(struct nlattr *),
    GFP_KERNEL);
 if (!attrbuf) {
  err = -ENOMEM;
  goto trans_out;
 }

 doit_buf = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (!doit_buf) {
  err = -ENOMEM;
  goto attrbuf_out;
 }

 memset(&info, 0, sizeof(info));
 info.attrs = attrbuf;

 rtnl_lock();
 err = (*cmd->transcode)(cmd, trans_buf, msg);
 if (err)
  goto doit_out;

 err = nla_parse_deprecated(attrbuf, tipc_genl_family.maxattr,
       (const struct nlattr *)trans_buf->data,
       trans_buf->len, ((void*)0), ((void*)0));
 if (err)
  goto doit_out;

 doit_buf->sk = msg->dst_sk;

 err = (*cmd->doit)(doit_buf, &info);
doit_out:
 rtnl_unlock();

 kfree_skb(doit_buf);
attrbuf_out:
 kfree(attrbuf);
trans_out:
 kfree_skb(trans_buf);

 return err;
}
