
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct net_device {int ifindex; } ;
struct cflayer {void* id; } ;
struct TYPE_2__ {struct net_device* dev; void* id; } ;
struct cfcnfg_phyinfo {int pref; int ifindex; int head_room; int use_fcs; int node; struct cflayer* frm_layer; struct cflayer* phy_layer; TYPE_1__ dev_info; void* id; } ;
struct cfcnfg {int lock; int phys; struct cflayer* mux; } ;
typedef enum cfcnfg_phy_preference { ____Placeholder_cfcnfg_phy_preference } cfcnfg_phy_preference ;


 int GFP_ATOMIC ;
 int * cfcnfg_get_phyinfo_rcu (struct cfcnfg*,void*) ;
 struct cflayer* cffrml_create (void*,int) ;
 int kfree (struct cfcnfg_phyinfo*) ;
 struct cfcnfg_phyinfo* kzalloc (int,int ) ;
 int layer_set_dn (struct cflayer*,struct cflayer*) ;
 int layer_set_up (struct cflayer*,struct cflayer*) ;
 int list_add_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*) ;

void
cfcnfg_add_phy_layer(struct cfcnfg *cnfg,
       struct net_device *dev, struct cflayer *phy_layer,
       enum cfcnfg_phy_preference pref,
       struct cflayer *link_support,
       bool fcs, int head_room)
{
 struct cflayer *frml;
 struct cfcnfg_phyinfo *phyinfo = ((void*)0);
 int i;
 u8 phyid;

 mutex_lock(&cnfg->lock);


 for (i = 0; i < 7; i++) {
  phyid = (dev->ifindex + i) & 0x7;
  if (phyid == 0)
   continue;
  if (cfcnfg_get_phyinfo_rcu(cnfg, phyid) == ((void*)0))
   goto got_phyid;
 }
 pr_warn("Too many CAIF Link Layers (max 6)\n");
 goto out;

got_phyid:
 phyinfo = kzalloc(sizeof(struct cfcnfg_phyinfo), GFP_ATOMIC);
 if (!phyinfo)
  goto out_err;

 phy_layer->id = phyid;
 phyinfo->pref = pref;
 phyinfo->id = phyid;
 phyinfo->dev_info.id = phyid;
 phyinfo->dev_info.dev = dev;
 phyinfo->phy_layer = phy_layer;
 phyinfo->ifindex = dev->ifindex;
 phyinfo->head_room = head_room;
 phyinfo->use_fcs = fcs;

 frml = cffrml_create(phyid, fcs);

 if (!frml)
  goto out_err;
 phyinfo->frm_layer = frml;
 layer_set_up(frml, cnfg->mux);

 if (link_support != ((void*)0)) {
  link_support->id = phyid;
  layer_set_dn(frml, link_support);
  layer_set_up(link_support, frml);
  layer_set_dn(link_support, phy_layer);
  layer_set_up(phy_layer, link_support);
 } else {
  layer_set_dn(frml, phy_layer);
  layer_set_up(phy_layer, frml);
 }

 list_add_rcu(&phyinfo->node, &cnfg->phys);
out:
 mutex_unlock(&cnfg->lock);
 return;

out_err:
 kfree(phyinfo);
 mutex_unlock(&cnfg->lock);
}
