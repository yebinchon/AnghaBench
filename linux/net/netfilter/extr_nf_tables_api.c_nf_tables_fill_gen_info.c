
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {int res_id; int version; int nfgen_family; } ;
struct TYPE_2__ {int base_seq; } ;
struct net {TYPE_1__ nft; } ;


 int AF_UNSPEC ;
 int EMSGSIZE ;
 int NFNETLINK_V0 ;
 int NFNL_SUBSYS_NFTABLES ;
 int NFTA_GEN_ID ;
 int NFTA_GEN_PROC_NAME ;
 int NFTA_GEN_PROC_PID ;
 int NFT_MSG_NEWGEN ;
 int TASK_COMM_LEN ;
 int current ;
 int get_task_comm (char*,int ) ;
 int htonl (int) ;
 int htons (int) ;
 int nfnl_msg_type (int ,int ) ;
 scalar_t__ nla_put_be32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 struct nfgenmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,int ) ;
 int nlmsg_trim (struct sk_buff*,struct nlmsghdr*) ;
 int task_pid_nr (int ) ;

__attribute__((used)) static int nf_tables_fill_gen_info(struct sk_buff *skb, struct net *net,
       u32 portid, u32 seq)
{
 struct nlmsghdr *nlh;
 struct nfgenmsg *nfmsg;
 char buf[TASK_COMM_LEN];
 int event = nfnl_msg_type(NFNL_SUBSYS_NFTABLES, NFT_MSG_NEWGEN);

 nlh = nlmsg_put(skb, portid, seq, event, sizeof(struct nfgenmsg), 0);
 if (nlh == ((void*)0))
  goto nla_put_failure;

 nfmsg = nlmsg_data(nlh);
 nfmsg->nfgen_family = AF_UNSPEC;
 nfmsg->version = NFNETLINK_V0;
 nfmsg->res_id = htons(net->nft.base_seq & 0xffff);

 if (nla_put_be32(skb, NFTA_GEN_ID, htonl(net->nft.base_seq)) ||
     nla_put_be32(skb, NFTA_GEN_PROC_PID, htonl(task_pid_nr(current))) ||
     nla_put_string(skb, NFTA_GEN_PROC_NAME, get_task_comm(buf, current)))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_trim(skb, nlh);
 return -EMSGSIZE;
}
