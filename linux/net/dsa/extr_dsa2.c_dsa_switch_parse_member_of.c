
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dsa_switch {int dst; int index; } ;
struct device_node {int dummy; } ;


 int DSA_MAX_SWITCHES ;
 int EINVAL ;
 int ENOMEM ;
 int dsa_tree_touch (int ) ;
 int of_property_read_variable_u32_array (struct device_node*,char*,int *,int,int) ;

__attribute__((used)) static int dsa_switch_parse_member_of(struct dsa_switch *ds,
          struct device_node *dn)
{
 u32 m[2] = { 0, 0 };
 int sz;


 sz = of_property_read_variable_u32_array(dn, "dsa,member", m, 2, 2);
 if (sz < 0 && sz != -EINVAL)
  return sz;

 ds->index = m[1];
 if (ds->index >= DSA_MAX_SWITCHES)
  return -EINVAL;

 ds->dst = dsa_tree_touch(m[0]);
 if (!ds->dst)
  return -ENOMEM;

 return 0;
}
