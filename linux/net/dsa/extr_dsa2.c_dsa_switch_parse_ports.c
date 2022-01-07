
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {struct dsa_port* ports; } ;
struct dsa_port {int dummy; } ;
struct dsa_chip_data {char** port_names; struct device** netdev; } ;
struct device {int dummy; } ;


 unsigned int DSA_MAX_PORTS ;
 int EINVAL ;
 int dsa_port_parse (struct dsa_port*,char const*,struct device*) ;

__attribute__((used)) static int dsa_switch_parse_ports(struct dsa_switch *ds,
      struct dsa_chip_data *cd)
{
 bool valid_name_found = 0;
 struct dsa_port *dp;
 struct device *dev;
 const char *name;
 unsigned int i;
 int err;

 for (i = 0; i < DSA_MAX_PORTS; i++) {
  name = cd->port_names[i];
  dev = cd->netdev[i];
  dp = &ds->ports[i];

  if (!name)
   continue;

  err = dsa_port_parse(dp, name, dev);
  if (err)
   return err;

  valid_name_found = 1;
 }

 if (!valid_name_found && i == DSA_MAX_PORTS)
  return -EINVAL;

 return 0;
}
