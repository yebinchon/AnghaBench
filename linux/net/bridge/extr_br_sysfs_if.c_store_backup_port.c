
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct net_bridge_port {int dev; } ;


 int ENOENT ;
 struct net_device* __dev_get_by_name (int ,char*) ;
 int dev_net (int ) ;
 int nbp_backup_change (struct net_bridge_port*,struct net_device*) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int store_backup_port(struct net_bridge_port *p, char *buf)
{
 struct net_device *backup_dev = ((void*)0);
 char *nl = strchr(buf, '\n');

 if (nl)
  *nl = '\0';

 if (strlen(buf) > 0) {
  backup_dev = __dev_get_by_name(dev_net(p->dev), buf);
  if (!backup_dev)
   return -ENOENT;
 }

 return nbp_backup_change(p, backup_dev);
}
