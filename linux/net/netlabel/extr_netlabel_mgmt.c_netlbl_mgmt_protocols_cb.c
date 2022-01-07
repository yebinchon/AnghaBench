
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {TYPE_1__* nlh; int skb; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int nlmsg_seq; } ;


 int ENOMEM ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NLBL_MGMT_A_PROTOCOL ;
 int NLBL_MGMT_C_PROTOCOLS ;
 int NLM_F_MULTI ;
 int genlmsg_cancel (struct sk_buff*,void*) ;
 int genlmsg_end (struct sk_buff*,void*) ;
 void* genlmsg_put (struct sk_buff*,int ,int ,int *,int ,int ) ;
 int netlbl_mgmt_gnl_family ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int netlbl_mgmt_protocols_cb(struct sk_buff *skb,
        struct netlink_callback *cb,
        u32 protocol)
{
 int ret_val = -ENOMEM;
 void *data;

 data = genlmsg_put(skb, NETLINK_CB(cb->skb).portid, cb->nlh->nlmsg_seq,
      &netlbl_mgmt_gnl_family, NLM_F_MULTI,
      NLBL_MGMT_C_PROTOCOLS);
 if (data == ((void*)0))
  goto protocols_cb_failure;

 ret_val = nla_put_u32(skb, NLBL_MGMT_A_PROTOCOL, protocol);
 if (ret_val != 0)
  goto protocols_cb_failure;

 genlmsg_end(skb, data);
 return 0;

protocols_cb_failure:
 genlmsg_cancel(skb, data);
 return ret_val;
}
