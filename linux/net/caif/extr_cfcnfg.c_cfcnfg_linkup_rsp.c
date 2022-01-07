
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int mtu; } ;
struct cflayer {int (* ctrlcmd ) (struct cflayer*,int ,int ) ;int id; } ;
struct TYPE_9__ {struct net_device* dev; } ;
struct cfcnfg_phyinfo {TYPE_2__ dev_info; TYPE_1__* phy_layer; int id; } ;
struct cfcnfg {struct cflayer* mux; int ctrl; } ;
typedef enum cfctrl_srv { ____Placeholder_cfctrl_srv } cfctrl_srv ;
struct TYPE_8__ {int id; } ;


 int CAIF_CTRLCMD_INIT_FAIL_RSP ;
 int CAIF_CTRLCMD_INIT_RSP ;






 int caif_assert (int) ;
 struct cfcnfg_phyinfo* cfcnfg_get_phyinfo_rcu (struct cfcnfg*,int ) ;
 int cfctrl_linkdown_req (int ,int ,int *) ;
 struct cflayer* cfdbgl_create (int ,TYPE_2__*) ;
 struct cflayer* cfdgml_create (int ,TYPE_2__*) ;
 int cfmuxl_set_uplayer (struct cflayer*,struct cflayer*,int ) ;
 struct cflayer* cfrfml_create (int ,TYPE_2__*,int ) ;
 struct cflayer* cfutill_create (int ,TYPE_2__*) ;
 struct cflayer* cfvei_create (int ,TYPE_2__*) ;
 struct cflayer* cfvidl_create (int ,TYPE_2__*) ;
 struct cfcnfg* container_obj (struct cflayer*) ;
 int layer_set_dn (struct cflayer*,struct cflayer*) ;
 int layer_set_up (struct cflayer*,struct cflayer*) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int pr_warn (char*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int stub1 (struct cflayer*,int ,int ) ;
 int stub2 (struct cflayer*,int ,int ) ;

__attribute__((used)) static void
cfcnfg_linkup_rsp(struct cflayer *layer, u8 channel_id, enum cfctrl_srv serv,
    u8 phyid, struct cflayer *adapt_layer)
{
 struct cfcnfg *cnfg = container_obj(layer);
 struct cflayer *servicel = ((void*)0);
 struct cfcnfg_phyinfo *phyinfo;
 struct net_device *netdev;

 if (channel_id == 0) {
  pr_warn("received channel_id zero\n");
  if (adapt_layer != ((void*)0) && adapt_layer->ctrlcmd != ((void*)0))
   adapt_layer->ctrlcmd(adapt_layer,
      CAIF_CTRLCMD_INIT_FAIL_RSP, 0);
  return;
 }

 rcu_read_lock();

 if (adapt_layer == ((void*)0)) {
  pr_debug("link setup response but no client exist, send linkdown back\n");
  cfctrl_linkdown_req(cnfg->ctrl, channel_id, ((void*)0));
  goto unlock;
 }

 caif_assert(cnfg != ((void*)0));
 caif_assert(phyid != 0);

 phyinfo = cfcnfg_get_phyinfo_rcu(cnfg, phyid);
 if (phyinfo == ((void*)0)) {
  pr_err("ERROR: Link Layer Device disappeared while connecting\n");
  goto unlock;
 }

 caif_assert(phyinfo != ((void*)0));
 caif_assert(phyinfo->id == phyid);
 caif_assert(phyinfo->phy_layer != ((void*)0));
 caif_assert(phyinfo->phy_layer->id == phyid);

 adapt_layer->id = channel_id;

 switch (serv) {
 case 129:
  servicel = cfvei_create(channel_id, &phyinfo->dev_info);
  break;
 case 133:
  servicel = cfdgml_create(channel_id,
     &phyinfo->dev_info);
  break;
 case 131:
  netdev = phyinfo->dev_info.dev;
  servicel = cfrfml_create(channel_id, &phyinfo->dev_info,
      netdev->mtu);
  break;
 case 130:
  servicel = cfutill_create(channel_id, &phyinfo->dev_info);
  break;
 case 128:
  servicel = cfvidl_create(channel_id, &phyinfo->dev_info);
  break;
 case 132:
  servicel = cfdbgl_create(channel_id, &phyinfo->dev_info);
  break;
 default:
  pr_err("Protocol error. Link setup response - unknown channel type\n");
  goto unlock;
 }
 if (!servicel)
  goto unlock;
 layer_set_dn(servicel, cnfg->mux);
 cfmuxl_set_uplayer(cnfg->mux, servicel, channel_id);
 layer_set_up(servicel, adapt_layer);
 layer_set_dn(adapt_layer, servicel);

 rcu_read_unlock();

 servicel->ctrlcmd(servicel, CAIF_CTRLCMD_INIT_RSP, 0);
 return;
unlock:
 rcu_read_unlock();
}
