
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct cflayer {scalar_t__ id; struct cflayer* phy_layer; struct cflayer* dn; struct cflayer* frm_layer; int node; } ;
struct cfcnfg_phyinfo {scalar_t__ id; struct cfcnfg_phyinfo* phy_layer; struct cfcnfg_phyinfo* dn; struct cfcnfg_phyinfo* frm_layer; int node; } ;
struct cfcnfg {int lock; int phys; } ;


 int EAGAIN ;
 int caif_assert (int) ;
 struct cflayer* cfcnfg_get_phyinfo_rcu (struct cfcnfg*,scalar_t__) ;
 int cffrml_free (struct cflayer*) ;
 scalar_t__ cffrml_refcnt_read (struct cflayer*) ;
 int cffrml_set_dnlayer (struct cflayer*,int *) ;
 int cffrml_set_uplayer (struct cflayer*,int *) ;
 int kfree (struct cflayer*) ;
 int layer_set_dn (struct cflayer*,int *) ;
 int layer_set_up (struct cflayer*,int *) ;
 int list_add_rcu (int *,int *) ;
 int list_del_rcu (int *) ;
 int might_sleep () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int synchronize_rcu () ;

int cfcnfg_del_phy_layer(struct cfcnfg *cnfg, struct cflayer *phy_layer)
{
 struct cflayer *frml, *frml_dn;
 u16 phyid;
 struct cfcnfg_phyinfo *phyinfo;

 might_sleep();

 mutex_lock(&cnfg->lock);

 phyid = phy_layer->id;
 phyinfo = cfcnfg_get_phyinfo_rcu(cnfg, phyid);

 if (phyinfo == ((void*)0)) {
  mutex_unlock(&cnfg->lock);
  return 0;
 }
 caif_assert(phyid == phyinfo->id);
 caif_assert(phy_layer == phyinfo->phy_layer);
 caif_assert(phy_layer->id == phyid);
 caif_assert(phyinfo->frm_layer->id == phyid);

 list_del_rcu(&phyinfo->node);
 synchronize_rcu();


 if (cffrml_refcnt_read(phyinfo->frm_layer) != 0) {
  pr_info("Wait for device inuse\n");
  list_add_rcu(&phyinfo->node, &cnfg->phys);
  mutex_unlock(&cnfg->lock);
  return -EAGAIN;
 }

 frml = phyinfo->frm_layer;
 frml_dn = frml->dn;
 cffrml_set_uplayer(frml, ((void*)0));
 cffrml_set_dnlayer(frml, ((void*)0));
 if (phy_layer != frml_dn) {
  layer_set_up(frml_dn, ((void*)0));
  layer_set_dn(frml_dn, ((void*)0));
 }
 layer_set_up(phy_layer, ((void*)0));

 if (phyinfo->phy_layer != frml_dn)
  kfree(frml_dn);

 cffrml_free(frml);
 kfree(phyinfo);
 mutex_unlock(&cnfg->lock);

 return 0;
}
