
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cflayer {int id; } ;
struct cfcnfg_phyinfo {int up; int frm_layer; } ;
struct cfcnfg {int mux; } ;


 int ENODEV ;
 struct cfcnfg_phyinfo* cfcnfg_get_phyinfo_rcu (struct cfcnfg*,int ) ;
 int cffrml_hold (int ) ;
 int cffrml_put (int ) ;
 int cfmuxl_remove_dnlayer (int ,int ) ;
 int cfmuxl_set_dnlayer (int ,int ,int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

int cfcnfg_set_phy_state(struct cfcnfg *cnfg, struct cflayer *phy_layer,
    bool up)
{
 struct cfcnfg_phyinfo *phyinfo;

 rcu_read_lock();
 phyinfo = cfcnfg_get_phyinfo_rcu(cnfg, phy_layer->id);
 if (phyinfo == ((void*)0)) {
  rcu_read_unlock();
  return -ENODEV;
 }

 if (phyinfo->up == up) {
  rcu_read_unlock();
  return 0;
 }
 phyinfo->up = up;

 if (up) {
  cffrml_hold(phyinfo->frm_layer);
  cfmuxl_set_dnlayer(cnfg->mux, phyinfo->frm_layer,
     phy_layer->id);
 } else {
  cfmuxl_remove_dnlayer(cnfg->mux, phy_layer->id);
  cffrml_put(phyinfo->frm_layer);
 }

 rcu_read_unlock();
 return 0;
}
