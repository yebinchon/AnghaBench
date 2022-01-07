
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int pf; } ;
struct devlink_port_attrs {TYPE_1__ pci_pf; } ;
struct devlink_port {struct devlink_port_attrs attrs; } ;


 int DEVLINK_PORT_FLAVOUR_PCI_PF ;
 int __devlink_port_attrs_set (struct devlink_port*,int ,unsigned char const*,unsigned char) ;

void devlink_port_attrs_pci_pf_set(struct devlink_port *devlink_port,
       const unsigned char *switch_id,
       unsigned char switch_id_len, u16 pf)
{
 struct devlink_port_attrs *attrs = &devlink_port->attrs;
 int ret;

 ret = __devlink_port_attrs_set(devlink_port,
           DEVLINK_PORT_FLAVOUR_PCI_PF,
           switch_id, switch_id_len);
 if (ret)
  return;

 attrs->pci_pf.pf = pf;
}
