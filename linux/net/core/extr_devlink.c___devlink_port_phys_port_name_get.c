
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int pf; int vf; } ;
struct TYPE_5__ {int pf; } ;
struct TYPE_4__ {int port_number; int split_subport_number; } ;
struct devlink_port_attrs {int flavour; TYPE_3__ pci_vf; TYPE_2__ pci_pf; TYPE_1__ phys; int split; int set; } ;
struct devlink_port {struct devlink_port_attrs attrs; } ;







 int EINVAL ;
 int EOPNOTSUPP ;
 int WARN_ON (int) ;
 int snprintf (char*,size_t,char*,int,...) ;

__attribute__((used)) static int __devlink_port_phys_port_name_get(struct devlink_port *devlink_port,
          char *name, size_t len)
{
 struct devlink_port_attrs *attrs = &devlink_port->attrs;
 int n = 0;

 if (!attrs->set)
  return -EOPNOTSUPP;

 switch (attrs->flavour) {
 case 128:
  if (!attrs->split)
   n = snprintf(name, len, "p%u", attrs->phys.port_number);
  else
   n = snprintf(name, len, "p%us%u",
         attrs->phys.port_number,
         attrs->phys.split_subport_number);
  break;
 case 132:
 case 131:



  WARN_ON(1);
  return -EINVAL;
 case 130:
  n = snprintf(name, len, "pf%u", attrs->pci_pf.pf);
  break;
 case 129:
  n = snprintf(name, len, "pf%uvf%u",
        attrs->pci_vf.pf, attrs->pci_vf.vf);
  break;
 }

 if (n >= len)
  return -EINVAL;

 return 0;
}
