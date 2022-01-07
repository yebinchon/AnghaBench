
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int unit_addr ;
typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ val; } ;
struct property {TYPE_1__ val; } ;
struct node {struct node* parent; int * bus; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
typedef int cell_t ;


 int FAIL (struct check*,struct dt_info*,struct node*,char*,...) ;
 int fdt32_to_cpu (int ) ;
 struct property* get_property (struct node*,char*) ;
 char* get_unitname (struct node*) ;
 int snprintf (char*,int,char*,int) ;
 int spi_bus ;
 int streq (char const*,char*) ;

__attribute__((used)) static void check_spi_bus_reg(struct check *c, struct dt_info *dti, struct node *node)
{
 struct property *prop;
 const char *unitname = get_unitname(node);
 char unit_addr[9];
 uint32_t reg = 0;
 cell_t *cells = ((void*)0);

 if (!node->parent || (node->parent->bus != &spi_bus))
  return;

 if (get_property(node->parent, "spi-slave"))
  return;

 prop = get_property(node, "reg");
 if (prop)
  cells = (cell_t *)prop->val.val;

 if (!cells) {
  FAIL(c, dti, node, "missing or empty reg property");
  return;
 }

 reg = fdt32_to_cpu(*cells);
 snprintf(unit_addr, sizeof(unit_addr), "%x", reg);
 if (!streq(unitname, unit_addr))
  FAIL(c, dti, node, "SPI bus unit address format error, expected \"%s\"",
       unit_addr);
}
