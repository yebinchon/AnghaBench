
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int unit_addr ;
struct TYPE_4__ {scalar_t__ val; } ;
struct property {TYPE_2__ val; } ;
struct node {TYPE_1__* parent; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef scalar_t__ cell_t ;
struct TYPE_3__ {int * bus; } ;


 int FAIL (struct check*,struct dt_info*,struct node*,char*,...) ;
 int FAIL_PROP (struct check*,struct dt_info*,struct node*,struct property*,char*) ;
 unsigned int fdt32_to_cpu (scalar_t__) ;
 struct property* get_property (struct node*,char*) ;
 char* get_unitname (struct node*) ;
 int pci_bus ;
 int snprintf (char*,int,char*,unsigned int,...) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static void check_pci_device_reg(struct check *c, struct dt_info *dti, struct node *node)
{
 struct property *prop;
 const char *unitname = get_unitname(node);
 char unit_addr[5];
 unsigned int dev, func, reg;
 cell_t *cells;

 if (!node->parent || (node->parent->bus != &pci_bus))
  return;

 prop = get_property(node, "reg");
 if (!prop) {
  FAIL(c, dti, node, "missing PCI reg property");
  return;
 }

 cells = (cell_t *)prop->val.val;
 if (cells[1] || cells[2])
  FAIL_PROP(c, dti, node, prop, "PCI reg config space address cells 2 and 3 must be 0");

 reg = fdt32_to_cpu(cells[0]);
 dev = (reg & 0xf800) >> 11;
 func = (reg & 0x700) >> 8;

 if (reg & 0xff000000)
  FAIL_PROP(c, dti, node, prop, "PCI reg address is not configuration space");
 if (reg & 0x000000ff)
  FAIL_PROP(c, dti, node, prop, "PCI reg config space address register number must be 0");

 if (func == 0) {
  snprintf(unit_addr, sizeof(unit_addr), "%x", dev);
  if (streq(unitname, unit_addr))
   return;
 }

 snprintf(unit_addr, sizeof(unit_addr), "%x,%x", dev, func);
 if (streq(unitname, unit_addr))
  return;

 FAIL(c, dti, node, "PCI unit address format error, expected \"%s\"",
      unit_addr);
}
