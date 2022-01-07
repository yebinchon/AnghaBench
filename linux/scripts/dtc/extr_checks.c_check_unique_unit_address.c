
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node {int dummy; } ;
struct dt_info {int dummy; } ;
struct check {int dummy; } ;


 int check_unique_unit_address_common (struct check*,struct dt_info*,struct node*,int) ;

__attribute__((used)) static void check_unique_unit_address(struct check *c, struct dt_info *dti,
           struct node *node)
{
 check_unique_unit_address_common(c, dti, node, 0);
}
