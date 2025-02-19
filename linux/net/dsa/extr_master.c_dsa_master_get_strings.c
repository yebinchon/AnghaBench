
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
typedef int uint32_t ;
struct net_device {scalar_t__ phydev; struct dsa_port* dsa_ptr; } ;
struct ethtool_ops {int (* get_sset_count ) (struct net_device*,int ) ;int (* get_strings ) (struct net_device*,int ,char*) ;int get_ethtool_phy_stats; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; struct ethtool_ops* orig_ethtool_ops; } ;
typedef int pfx ;
struct TYPE_2__ {int (* get_sset_count ) (struct dsa_switch*,int,int ) ;int (* get_strings ) (struct dsa_switch*,int,int ,char*) ;} ;


 int ETH_GSTRING_LEN ;
 int ETH_SS_PHY_STATS ;
 int memcpy (char*,char*,int) ;
 int memmove (char*,char*,int) ;
 int phy_ethtool_get_sset_count (scalar_t__) ;
 int phy_ethtool_get_strings (scalar_t__,char*) ;
 int snprintf (char*,int,char*,int) ;
 int stub1 (struct net_device*,int ) ;
 int stub2 (struct net_device*,int ,char*) ;
 int stub3 (struct dsa_switch*,int,int ,char*) ;
 int stub4 (struct dsa_switch*,int,int ) ;

__attribute__((used)) static void dsa_master_get_strings(struct net_device *dev, uint32_t stringset,
       uint8_t *data)
{
 struct dsa_port *cpu_dp = dev->dsa_ptr;
 const struct ethtool_ops *ops = cpu_dp->orig_ethtool_ops;
 struct dsa_switch *ds = cpu_dp->ds;
 int port = cpu_dp->index;
 int len = ETH_GSTRING_LEN;
 int mcount = 0, count;
 unsigned int i;
 uint8_t pfx[4];
 uint8_t *ndata;

 snprintf(pfx, sizeof(pfx), "p%.2d", port);

 pfx[sizeof(pfx) - 1] = '_';

 if (stringset == ETH_SS_PHY_STATS && dev->phydev &&
     !ops->get_ethtool_phy_stats) {
  mcount = phy_ethtool_get_sset_count(dev->phydev);
  if (mcount < 0)
   mcount = 0;
  else
   phy_ethtool_get_strings(dev->phydev, data);
 } else if (ops->get_sset_count && ops->get_strings) {
  mcount = ops->get_sset_count(dev, stringset);
  if (mcount < 0)
   mcount = 0;
  ops->get_strings(dev, stringset, data);
 }

 if (ds->ops->get_strings) {
  ndata = data + mcount * len;




  ds->ops->get_strings(ds, port, stringset, ndata);
  count = ds->ops->get_sset_count(ds, port, stringset);
  for (i = 0; i < count; i++) {
   memmove(ndata + (i * len + sizeof(pfx)),
    ndata + i * len, len - sizeof(pfx));
   memcpy(ndata + i * len, pfx, sizeof(pfx));
  }
 }
}
