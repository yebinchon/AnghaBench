
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct dsa_port {int dummy; } ;
struct device {int dummy; } ;


 int EPROBE_DEFER ;
 int dev_put (struct net_device*) ;
 struct net_device* dsa_dev_to_net_device (struct device*) ;
 int dsa_port_parse_cpu (struct dsa_port*,struct net_device*) ;
 int dsa_port_parse_dsa (struct dsa_port*) ;
 int dsa_port_parse_user (struct dsa_port*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int dsa_port_parse(struct dsa_port *dp, const char *name,
     struct device *dev)
{
 if (!strcmp(name, "cpu")) {
  struct net_device *master;

  master = dsa_dev_to_net_device(dev);
  if (!master)
   return -EPROBE_DEFER;

  dev_put(master);

  return dsa_port_parse_cpu(dp, master);
 }

 if (!strcmp(name, "dsa"))
  return dsa_port_parse_dsa(dp);

 return dsa_port_parse_user(dp, name);
}
