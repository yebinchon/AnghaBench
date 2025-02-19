
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct netlink_diag_req {int sdiag_protocol; } ;
struct netlink_callback {int* args; int nlh; } ;


 int ENOENT ;
 int MAX_LINKS ;
 int NDIAG_PROTO_ALL ;
 int __netlink_diag_dump (struct sk_buff*,struct netlink_callback*,int,int) ;
 struct netlink_diag_req* nlmsg_data (int ) ;

__attribute__((used)) static int netlink_diag_dump(struct sk_buff *skb, struct netlink_callback *cb)
{
 struct netlink_diag_req *req;
 int s_num = cb->args[0];
 int err = 0;

 req = nlmsg_data(cb->nlh);

 if (req->sdiag_protocol == NDIAG_PROTO_ALL) {
  int i;

  for (i = cb->args[1]; i < MAX_LINKS; i++) {
   err = __netlink_diag_dump(skb, cb, i, s_num);
   if (err)
    break;
   s_num = 0;
  }
  cb->args[1] = i;
 } else {
  if (req->sdiag_protocol >= MAX_LINKS)
   return -ENOENT;

  err = __netlink_diag_dump(skb, cb, req->sdiag_protocol, s_num);
 }

 return err < 0 ? err : skb->len;
}
