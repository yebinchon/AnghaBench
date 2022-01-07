
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dsa_switch {int index; int phys_mii_mask; TYPE_2__* slave_mii_bus; int dev; TYPE_1__* dst; } ;
struct TYPE_4__ {char* name; int phy_mask; int parent; int id; int write; int read; void* priv; } ;
struct TYPE_3__ {int index; } ;


 int MII_BUS_ID_SIZE ;
 int dsa_slave_phy_read ;
 int dsa_slave_phy_write ;
 int snprintf (int ,int ,char*,int,int) ;

void dsa_slave_mii_bus_init(struct dsa_switch *ds)
{
 ds->slave_mii_bus->priv = (void *)ds;
 ds->slave_mii_bus->name = "dsa slave smi";
 ds->slave_mii_bus->read = dsa_slave_phy_read;
 ds->slave_mii_bus->write = dsa_slave_phy_write;
 snprintf(ds->slave_mii_bus->id, MII_BUS_ID_SIZE, "dsa-%d.%d",
   ds->dst->index, ds->index);
 ds->slave_mii_bus->parent = ds->dev;
 ds->slave_mii_bus->phy_mask = ~ds->phys_mii_mask;
}
