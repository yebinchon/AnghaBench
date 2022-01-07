
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_6__ {int split_subport_number; int port_number; } ;
struct TYPE_5__ {int pf; int vf; } ;
struct TYPE_4__ {int pf; } ;
struct devlink_port_attrs {int flavour; TYPE_3__ phys; int split; TYPE_2__ pci_vf; TYPE_1__ pci_pf; int set; } ;
struct devlink_port {struct devlink_port_attrs attrs; } ;


 int DEVLINK_ATTR_PORT_FLAVOUR ;
 int DEVLINK_ATTR_PORT_NUMBER ;
 int DEVLINK_ATTR_PORT_PCI_PF_NUMBER ;
 int DEVLINK_ATTR_PORT_PCI_VF_NUMBER ;
 int DEVLINK_ATTR_PORT_SPLIT_GROUP ;
 int DEVLINK_ATTR_PORT_SPLIT_SUBPORT_NUMBER ;





 int EMSGSIZE ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int) ;
 int nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int devlink_nl_port_attrs_put(struct sk_buff *msg,
         struct devlink_port *devlink_port)
{
 struct devlink_port_attrs *attrs = &devlink_port->attrs;

 if (!attrs->set)
  return 0;
 if (nla_put_u16(msg, DEVLINK_ATTR_PORT_FLAVOUR, attrs->flavour))
  return -EMSGSIZE;
 switch (devlink_port->attrs.flavour) {
 case 130:
  if (nla_put_u16(msg, DEVLINK_ATTR_PORT_PCI_PF_NUMBER,
    attrs->pci_pf.pf))
   return -EMSGSIZE;
  break;
 case 129:
  if (nla_put_u16(msg, DEVLINK_ATTR_PORT_PCI_PF_NUMBER,
    attrs->pci_vf.pf) ||
      nla_put_u16(msg, DEVLINK_ATTR_PORT_PCI_VF_NUMBER,
    attrs->pci_vf.vf))
   return -EMSGSIZE;
  break;
 case 128:
 case 132:
 case 131:
  if (nla_put_u32(msg, DEVLINK_ATTR_PORT_NUMBER,
    attrs->phys.port_number))
   return -EMSGSIZE;
  if (!attrs->split)
   return 0;
  if (nla_put_u32(msg, DEVLINK_ATTR_PORT_SPLIT_GROUP,
    attrs->phys.port_number))
   return -EMSGSIZE;
  if (nla_put_u32(msg, DEVLINK_ATTR_PORT_SPLIT_SUBPORT_NUMBER,
    attrs->phys.split_subport_number))
   return -EMSGSIZE;
  break;
 default:
  break;
 }
 return 0;
}
