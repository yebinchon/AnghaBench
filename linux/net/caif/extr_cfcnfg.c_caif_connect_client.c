
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net {int dummy; } ;
struct cflayer {scalar_t__ id; int * ctrlcmd; int * receive; } ;
struct cfctrl_link_param {scalar_t__ phyid; size_t linktype; } ;
struct cfcnfg_phyinfo {scalar_t__ id; int ifindex; int head_room; TYPE_1__* phy_layer; struct cflayer* frm_layer; } ;
struct cfcnfg {int ctrl; } ;
struct caif_connect_request {int dummy; } ;
struct TYPE_2__ {scalar_t__ id; } ;


 int EINVAL ;
 int ENODEV ;
 int caif_assert (int) ;
 int caif_connect_req_to_link_param (struct cfcnfg*,struct caif_connect_request*,struct cfctrl_link_param*) ;
 struct cfcnfg_phyinfo* cfcnfg_get_phyinfo_rcu (struct cfcnfg*,scalar_t__) ;
 int cfctrl_enum_req (int ,scalar_t__) ;
 int cfctrl_linkup_request (int ,struct cfctrl_link_param*,struct cflayer*) ;
 struct cfcnfg* get_cfcnfg (struct net*) ;
 int pr_err (char*) ;
 int* protohead ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int caif_connect_client(struct net *net, struct caif_connect_request *conn_req,
   struct cflayer *adap_layer, int *ifindex,
   int *proto_head, int *proto_tail)
{
 struct cflayer *frml;
 struct cfcnfg_phyinfo *phy;
 int err;
 struct cfctrl_link_param param;
 struct cfcnfg *cfg = get_cfcnfg(net);

 rcu_read_lock();
 err = caif_connect_req_to_link_param(cfg, conn_req, &param);
 if (err)
  goto unlock;

 phy = cfcnfg_get_phyinfo_rcu(cfg, param.phyid);
 if (!phy) {
  err = -ENODEV;
  goto unlock;
 }
 err = -EINVAL;

 if (adap_layer == ((void*)0)) {
  pr_err("adap_layer is zero\n");
  goto unlock;
 }
 if (adap_layer->receive == ((void*)0)) {
  pr_err("adap_layer->receive is NULL\n");
  goto unlock;
 }
 if (adap_layer->ctrlcmd == ((void*)0)) {
  pr_err("adap_layer->ctrlcmd == NULL\n");
  goto unlock;
 }

 err = -ENODEV;
 frml = phy->frm_layer;
 if (frml == ((void*)0)) {
  pr_err("Specified PHY type does not exist!\n");
  goto unlock;
 }
 caif_assert(param.phyid == phy->id);
 caif_assert(phy->frm_layer->id ==
       param.phyid);
 caif_assert(phy->phy_layer->id ==
       param.phyid);

 *ifindex = phy->ifindex;
 *proto_tail = 2;
 *proto_head = protohead[param.linktype] + phy->head_room;

 rcu_read_unlock();


 cfctrl_enum_req(cfg->ctrl, param.phyid);
 return cfctrl_linkup_request(cfg->ctrl, &param, adap_layer);

unlock:
 rcu_read_unlock();
 return err;
}
