
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; int sk; int * data; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_seq; } ;
struct nlmsgerr {int error; int msg; } ;
struct netlink_sock {int flags; } ;
struct netlink_ext_ack {int cookie_len; int cookie; scalar_t__ bad_attr; scalar_t__ _msg; } ;
struct TYPE_5__ {int portid; TYPE_1__* sk; } ;
struct TYPE_4__ {int (* sk_error_report ) (TYPE_1__*) ;int sk_err; } ;


 int ENOBUFS ;
 int GFP_KERNEL ;
 int MSG_DONTWAIT ;
 TYPE_3__ NETLINK_CB (struct sk_buff*) ;
 int NETLINK_F_CAP_ACK ;
 int NETLINK_F_EXT_ACK ;
 int NLMSGERR_ATTR_COOKIE ;
 int NLMSGERR_ATTR_MSG ;
 int NLMSGERR_ATTR_OFFS ;
 int NLMSG_ERROR ;
 unsigned int NLM_F_ACK_TLVS ;
 unsigned int NLM_F_CAPPED ;
 int WARN_ON (int) ;
 struct nlmsghdr* __nlmsg_put (struct sk_buff*,int ,int ,int ,size_t,unsigned int) ;
 int memcpy (int *,struct nlmsghdr*,int) ;
 int netlink_unicast (int ,struct sk_buff*,int ,int ) ;
 int nla_put (struct sk_buff*,int ,int,int ) ;
 int nla_put_string (struct sk_buff*,int ,scalar_t__) ;
 int nla_put_u32 (struct sk_buff*,int ,int) ;
 scalar_t__ nla_total_size (int) ;
 struct netlink_sock* nlk_sk (TYPE_1__*) ;
 struct nlmsgerr* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 scalar_t__ nlmsg_len (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (size_t,int ) ;
 int strlen (scalar_t__) ;
 int stub1 (TYPE_1__*) ;

void netlink_ack(struct sk_buff *in_skb, struct nlmsghdr *nlh, int err,
   const struct netlink_ext_ack *extack)
{
 struct sk_buff *skb;
 struct nlmsghdr *rep;
 struct nlmsgerr *errmsg;
 size_t payload = sizeof(*errmsg);
 size_t tlvlen = 0;
 struct netlink_sock *nlk = nlk_sk(NETLINK_CB(in_skb).sk);
 unsigned int flags = 0;
 bool nlk_has_extack = nlk->flags & NETLINK_F_EXT_ACK;





 if (nlk_has_extack && extack && extack->_msg)
  tlvlen += nla_total_size(strlen(extack->_msg) + 1);

 if (err) {
  if (!(nlk->flags & NETLINK_F_CAP_ACK))
   payload += nlmsg_len(nlh);
  else
   flags |= NLM_F_CAPPED;
  if (nlk_has_extack && extack && extack->bad_attr)
   tlvlen += nla_total_size(sizeof(u32));
 } else {
  flags |= NLM_F_CAPPED;

  if (nlk_has_extack && extack && extack->cookie_len)
   tlvlen += nla_total_size(extack->cookie_len);
 }

 if (tlvlen)
  flags |= NLM_F_ACK_TLVS;

 skb = nlmsg_new(payload + tlvlen, GFP_KERNEL);
 if (!skb) {
  NETLINK_CB(in_skb).sk->sk_err = ENOBUFS;
  NETLINK_CB(in_skb).sk->sk_error_report(NETLINK_CB(in_skb).sk);
  return;
 }

 rep = __nlmsg_put(skb, NETLINK_CB(in_skb).portid, nlh->nlmsg_seq,
     NLMSG_ERROR, payload, flags);
 errmsg = nlmsg_data(rep);
 errmsg->error = err;
 memcpy(&errmsg->msg, nlh, payload > sizeof(*errmsg) ? nlh->nlmsg_len : sizeof(*nlh));

 if (nlk_has_extack && extack) {
  if (extack->_msg) {
   WARN_ON(nla_put_string(skb, NLMSGERR_ATTR_MSG,
            extack->_msg));
  }
  if (err) {
   if (extack->bad_attr &&
       !WARN_ON((u8 *)extack->bad_attr < in_skb->data ||
         (u8 *)extack->bad_attr >= in_skb->data +
              in_skb->len))
    WARN_ON(nla_put_u32(skb, NLMSGERR_ATTR_OFFS,
          (u8 *)extack->bad_attr -
          in_skb->data));
  } else {
   if (extack->cookie_len)
    WARN_ON(nla_put(skb, NLMSGERR_ATTR_COOKIE,
      extack->cookie_len,
      extack->cookie));
  }
 }

 nlmsg_end(skb, rep);

 netlink_unicast(in_skb->sk, skb, NETLINK_CB(in_skb).portid, MSG_DONTWAIT);
}
