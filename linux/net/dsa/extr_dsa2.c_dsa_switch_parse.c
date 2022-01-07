
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dst; scalar_t__ index; struct dsa_chip_data* cd; } ;
struct dsa_chip_data {int dummy; } ;


 int ENOMEM ;
 int dsa_switch_parse_ports (struct dsa_switch*,struct dsa_chip_data*) ;
 int dsa_tree_touch (int ) ;

__attribute__((used)) static int dsa_switch_parse(struct dsa_switch *ds, struct dsa_chip_data *cd)
{
 ds->cd = cd;




 ds->index = 0;
 ds->dst = dsa_tree_touch(0);
 if (!ds->dst)
  return -ENOMEM;

 return dsa_switch_parse_ports(ds, cd);
}
