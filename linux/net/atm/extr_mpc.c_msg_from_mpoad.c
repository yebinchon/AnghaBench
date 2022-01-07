
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int truesize; scalar_t__ data; } ;
struct mpoa_client {int parameters; TYPE_1__* dev; } ;
struct TYPE_5__ {int params; } ;
struct k_message {int type; TYPE_2__ content; } ;
struct atm_vcc {int dummy; } ;
struct TYPE_6__ {int sk_wmem_alloc; } ;
struct TYPE_4__ {char* name; } ;




 int const DIE ;




 int MPOA_cache_impos_rcvd (struct k_message*,struct mpoa_client*) ;
 int MPOA_res_reply_rcvd (struct k_message*,struct mpoa_client*) ;
 int MPOA_trigger_rcvd (struct k_message*,struct mpoa_client*) ;





 int WARN_ON (int ) ;
 int clean_up (struct k_message*,struct mpoa_client*,int const) ;
 int dprintk (char*,char*) ;
 int dprintk_cont (char*,...) ;
 int egress_purge_rcvd (struct k_message*,struct mpoa_client*) ;
 struct mpoa_client* find_mpc_by_vcc (struct atm_vcc*) ;
 int ingress_purge_rcvd (struct k_message*,struct mpoa_client*) ;
 int kfree_skb (struct sk_buff*) ;
 int mps_death (struct k_message*,struct mpoa_client*) ;
 int pr_info (char*) ;
 int refcount_sub_and_test (int ,int *) ;
 int set_mpc_ctrl_addr_rcvd (struct k_message*,struct mpoa_client*) ;
 int set_mps_mac_addr_rcvd (struct k_message*,struct mpoa_client*) ;
 TYPE_3__* sk_atm (struct atm_vcc*) ;

__attribute__((used)) static int msg_from_mpoad(struct atm_vcc *vcc, struct sk_buff *skb)
{

 struct mpoa_client *mpc = find_mpc_by_vcc(vcc);
 struct k_message *mesg = (struct k_message *)skb->data;
 WARN_ON(refcount_sub_and_test(skb->truesize, &sk_atm(vcc)->sk_wmem_alloc));

 if (mpc == ((void*)0)) {
  pr_info("no mpc found\n");
  return 0;
 }
 dprintk("(%s)", mpc->dev ? mpc->dev->name : "<unknown>");
 switch (mesg->type) {
 case 134:
  dprintk_cont("mpoa_res_reply_rcvd\n");
  MPOA_res_reply_rcvd(mesg, mpc);
  break;
 case 133:
  dprintk_cont("mpoa_trigger_rcvd\n");
  MPOA_trigger_rcvd(mesg, mpc);
  break;
 case 135:
  dprintk_cont("nhrp_purge_rcvd\n");
  ingress_purge_rcvd(mesg, mpc);
  break;
 case 136:
  dprintk_cont("egress_purge_reply_rcvd\n");
  egress_purge_rcvd(mesg, mpc);
  break;
 case 132:
  dprintk_cont("mps_death\n");
  mps_death(mesg, mpc);
  break;
 case 138:
  dprintk_cont("cache_impos_rcvd\n");
  MPOA_cache_impos_rcvd(mesg, mpc);
  break;
 case 130:
  dprintk_cont("set_mpc_ctrl_addr\n");
  set_mpc_ctrl_addr_rcvd(mesg, mpc);
  break;
 case 128:
  dprintk_cont("set_mps_mac_addr\n");
  set_mps_mac_addr_rcvd(mesg, mpc);
  break;
 case 137:
  dprintk_cont("clean_up_and_exit\n");
  clean_up(mesg, mpc, DIE);
  break;
 case 131:
  dprintk_cont("reload\n");
  clean_up(mesg, mpc, 131);
  break;
 case 129:
  dprintk_cont("set_mpc_params\n");
  mpc->parameters = mesg->content.params;
  break;
 default:
  dprintk_cont("unknown message %d\n", mesg->type);
  break;
 }
 kfree_skb(skb);

 return 0;
}
