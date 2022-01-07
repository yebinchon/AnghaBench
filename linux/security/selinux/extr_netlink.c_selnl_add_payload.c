
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct selnl_msg_setenforce {int val; int seqno; } ;
struct selnl_msg_policyload {int val; int seqno; } ;
struct nlmsghdr {int dummy; } ;


 int BUG () ;


 int memset (struct selnl_msg_setenforce*,int ,int) ;
 struct selnl_msg_setenforce* nlmsg_data (struct nlmsghdr*) ;

__attribute__((used)) static void selnl_add_payload(struct nlmsghdr *nlh, int len, int msgtype, void *data)
{
 switch (msgtype) {
 case 128: {
  struct selnl_msg_setenforce *msg = nlmsg_data(nlh);

  memset(msg, 0, len);
  msg->val = *((int *)data);
  break;
 }

 case 129: {
  struct selnl_msg_policyload *msg = nlmsg_data(nlh);

  memset(msg, 0, len);
  msg->seqno = *((u32 *)data);
  break;
 }

 default:
  BUG();
 }
}
