
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; scalar_t__ val; } ;
struct property {TYPE_1__ val; } ;
struct node {int basenamelen; int name; int * bus; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef int cell_t ;


 int FAIL (struct check*,struct dt_info*,struct node*,char*) ;
 int FAIL_PROP (struct check*,struct dt_info*,struct node*,struct property*,char*) ;
 int fdt32_to_cpu (int ) ;
 struct property* get_property (struct node*,char*) ;
 int node_addr_cells (struct node*) ;
 int node_size_cells (struct node*) ;
 int pci_bus ;
 int streq (scalar_t__,char*) ;
 int strprefixeq (int ,int ,char*) ;

__attribute__((used)) static void check_pci_bridge(struct check *c, struct dt_info *dti, struct node *node)
{
 struct property *prop;
 cell_t *cells;

 prop = get_property(node, "device_type");
 if (!prop || !streq(prop->val.val, "pci"))
  return;

 node->bus = &pci_bus;

 if (!strprefixeq(node->name, node->basenamelen, "pci") &&
     !strprefixeq(node->name, node->basenamelen, "pcie"))
  FAIL(c, dti, node, "node name is not \"pci\" or \"pcie\"");

 prop = get_property(node, "ranges");
 if (!prop)
  FAIL(c, dti, node, "missing ranges for PCI bridge (or not a bridge)");

 if (node_addr_cells(node) != 3)
  FAIL(c, dti, node, "incorrect #address-cells for PCI bridge");
 if (node_size_cells(node) != 2)
  FAIL(c, dti, node, "incorrect #size-cells for PCI bridge");

 prop = get_property(node, "bus-range");
 if (!prop)
  return;

 if (prop->val.len != (sizeof(cell_t) * 2)) {
  FAIL_PROP(c, dti, node, prop, "value must be 2 cells");
  return;
 }
 cells = (cell_t *)prop->val.val;
 if (fdt32_to_cpu(cells[0]) > fdt32_to_cpu(cells[1]))
  FAIL_PROP(c, dti, node, prop, "1st cell must be less than or equal to 2nd cell");
 if (fdt32_to_cpu(cells[1]) > 0xff)
  FAIL_PROP(c, dti, node, prop, "maximum bus number must be less than 256");
}
