
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ head; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct genlmsghdr {int dummy; } ;


 int WIMAX_GNL_MSG_DATA ;
 void const* nla_data (struct nlattr*) ;
 struct nlattr* nlmsg_find_attr (struct nlmsghdr*,int,int ) ;
 int pr_err (char*) ;

const void *wimax_msg_data(struct sk_buff *msg)
{
 struct nlmsghdr *nlh = (void *) msg->head;
 struct nlattr *nla;

 nla = nlmsg_find_attr(nlh, sizeof(struct genlmsghdr),
         WIMAX_GNL_MSG_DATA);
 if (nla == ((void*)0)) {
  pr_err("Cannot find attribute WIMAX_GNL_MSG_DATA\n");
  return ((void*)0);
 }
 return nla_data(nla);
}
