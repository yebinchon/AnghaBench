
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;
struct device_node {int dummy; } ;


 int dsa_switch_parse_member_of (struct dsa_switch*,struct device_node*) ;
 int dsa_switch_parse_ports_of (struct dsa_switch*,struct device_node*) ;

__attribute__((used)) static int dsa_switch_parse_of(struct dsa_switch *ds, struct device_node *dn)
{
 int err;

 err = dsa_switch_parse_member_of(ds, dn);
 if (err)
  return err;

 return dsa_switch_parse_ports_of(ds, dn);
}
