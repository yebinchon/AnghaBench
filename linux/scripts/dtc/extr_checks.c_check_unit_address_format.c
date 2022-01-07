
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct node {TYPE_1__* parent; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;
struct TYPE_2__ {scalar_t__ bus; } ;


 int FAIL (struct check*,struct dt_info*,struct node*,char*) ;
 char* get_unitname (struct node*) ;
 scalar_t__ isxdigit (char const) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static void check_unit_address_format(struct check *c, struct dt_info *dti,
          struct node *node)
{
 const char *unitname = get_unitname(node);

 if (node->parent && node->parent->bus)
  return;

 if (!unitname[0])
  return;

 if (!strncmp(unitname, "0x", 2)) {
  FAIL(c, dti, node, "unit name should not have leading \"0x\"");

  unitname += 2;
 }
 if (unitname[0] == '0' && isxdigit(unitname[1]))
  FAIL(c, dti, node, "unit name should not have leading 0s");
}
