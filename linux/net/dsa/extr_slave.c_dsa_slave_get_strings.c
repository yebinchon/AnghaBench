
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct net_device {int dummy; } ;
struct dsa_switch {TYPE_1__* ops; } ;
struct dsa_port {int index; struct dsa_switch* ds; } ;
struct TYPE_2__ {int (* get_strings ) (struct dsa_switch*,int ,int ,int *) ;} ;


 int ETH_GSTRING_LEN ;
 int ETH_SS_STATS ;
 struct dsa_port* dsa_slave_to_port (struct net_device*) ;
 int strncpy (int *,char*,int) ;
 int stub1 (struct dsa_switch*,int ,int ,int *) ;

__attribute__((used)) static void dsa_slave_get_strings(struct net_device *dev,
      uint32_t stringset, uint8_t *data)
{
 struct dsa_port *dp = dsa_slave_to_port(dev);
 struct dsa_switch *ds = dp->ds;

 if (stringset == ETH_SS_STATS) {
  int len = ETH_GSTRING_LEN;

  strncpy(data, "tx_packets", len);
  strncpy(data + len, "tx_bytes", len);
  strncpy(data + 2 * len, "rx_packets", len);
  strncpy(data + 3 * len, "rx_bytes", len);
  if (ds->ops->get_strings)
   ds->ops->get_strings(ds, dp->index, stringset,
          data + 4 * len);
 }
}
