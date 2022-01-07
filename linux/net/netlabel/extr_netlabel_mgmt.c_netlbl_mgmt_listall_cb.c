
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct netlbl_domhsh_walk_arg {int skb; int seq; TYPE_1__* nl_cb; } ;
struct netlbl_dom_map {int dummy; } ;
struct TYPE_4__ {int portid; } ;
struct TYPE_3__ {int skb; } ;


 int ENOMEM ;
 TYPE_2__ NETLINK_CB (int ) ;
 int NLBL_MGMT_C_LISTALL ;
 int NLM_F_MULTI ;
 int genlmsg_cancel (int ,void*) ;
 int genlmsg_end (int ,void*) ;
 void* genlmsg_put (int ,int ,int ,int *,int ,int ) ;
 int netlbl_mgmt_gnl_family ;
 int netlbl_mgmt_listentry (int ,struct netlbl_dom_map*) ;

__attribute__((used)) static int netlbl_mgmt_listall_cb(struct netlbl_dom_map *entry, void *arg)
{
 int ret_val = -ENOMEM;
 struct netlbl_domhsh_walk_arg *cb_arg = arg;
 void *data;

 data = genlmsg_put(cb_arg->skb, NETLINK_CB(cb_arg->nl_cb->skb).portid,
      cb_arg->seq, &netlbl_mgmt_gnl_family,
      NLM_F_MULTI, NLBL_MGMT_C_LISTALL);
 if (data == ((void*)0))
  goto listall_cb_failure;

 ret_val = netlbl_mgmt_listentry(cb_arg->skb, entry);
 if (ret_val != 0)
  goto listall_cb_failure;

 cb_arg->seq++;
 genlmsg_end(cb_arg->skb, data);
 return 0;

listall_cb_failure:
 genlmsg_cancel(cb_arg->skb, data);
 return ret_val;
}
