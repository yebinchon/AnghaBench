
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; } ;


 size_t NFNL_BATCH_GENID ;
 int NFNL_BATCH_MAX ;
 scalar_t__ NFNL_SUBSYS_NFTABLES ;
 int NLMSG_ALIGN (int) ;
 int NLMSG_HDRLEN ;
 int netlink_ack (struct sk_buff*,struct nlmsghdr*,int,int *) ;
 int nfnetlink_rcv_batch (struct sk_buff*,struct nlmsghdr*,scalar_t__,int ) ;
 int nfnl_batch_policy ;
 int nla_get_be32 (struct nlattr*) ;
 int nla_parse_deprecated (struct nlattr**,int ,struct nlattr*,int,int ,int *) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_total_size (int) ;
 int ntohl (int ) ;
 scalar_t__ ntohs (scalar_t__) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static void nfnetlink_rcv_skb_batch(struct sk_buff *skb, struct nlmsghdr *nlh)
{
 int min_len = nlmsg_total_size(sizeof(struct nfgenmsg));
 struct nlattr *attr = (void *)nlh + min_len;
 struct nlattr *cda[NFNL_BATCH_MAX + 1];
 int attrlen = nlh->nlmsg_len - min_len;
 struct nfgenmsg *nfgenmsg;
 int msglen, err;
 u32 gen_id = 0;
 u16 res_id;

 msglen = NLMSG_ALIGN(nlh->nlmsg_len);
 if (msglen > skb->len)
  msglen = skb->len;

 if (skb->len < NLMSG_HDRLEN + sizeof(struct nfgenmsg))
  return;

 err = nla_parse_deprecated(cda, NFNL_BATCH_MAX, attr, attrlen,
       nfnl_batch_policy, ((void*)0));
 if (err < 0) {
  netlink_ack(skb, nlh, err, ((void*)0));
  return;
 }
 if (cda[NFNL_BATCH_GENID])
  gen_id = ntohl(nla_get_be32(cda[NFNL_BATCH_GENID]));

 nfgenmsg = nlmsg_data(nlh);
 skb_pull(skb, msglen);

 if (nfgenmsg->res_id == NFNL_SUBSYS_NFTABLES)
  res_id = NFNL_SUBSYS_NFTABLES;
 else
  res_id = ntohs(nfgenmsg->res_id);

 nfnetlink_rcv_batch(skb, nlh, res_id, gen_id);
}
