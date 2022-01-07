
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {int nlmsg_type; } ;
struct netlink_ext_ack {int dummy; } ;


 int AF_INET ;

 int EINVAL ;
 int EOPNOTSUPP ;



 int __sock_diag_cmd (struct sk_buff*,struct nlmsghdr*) ;
 int inet_rcv_compat (struct sk_buff*,struct nlmsghdr*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sock_diag_table_mutex ;
 int sock_load_diag_module (int ,int ) ;

__attribute__((used)) static int sock_diag_rcv_msg(struct sk_buff *skb, struct nlmsghdr *nlh,
        struct netlink_ext_ack *extack)
{
 int ret;

 switch (nlh->nlmsg_type) {
 case 128:
 case 131:
  if (inet_rcv_compat == ((void*)0))
   sock_load_diag_module(AF_INET, 0);

  mutex_lock(&sock_diag_table_mutex);
  if (inet_rcv_compat != ((void*)0))
   ret = inet_rcv_compat(skb, nlh);
  else
   ret = -EOPNOTSUPP;
  mutex_unlock(&sock_diag_table_mutex);

  return ret;
 case 129:
 case 130:
  return __sock_diag_cmd(skb, nlh);
 default:
  return -EINVAL;
 }
}
