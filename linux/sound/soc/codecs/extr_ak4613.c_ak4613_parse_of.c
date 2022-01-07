
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct ak4613_priv {int ic; int oc; } ;
typedef int prop ;


 int of_get_property (struct device_node*,char*,int *) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void ak4613_parse_of(struct ak4613_priv *priv,
       struct device *dev)
{
 struct device_node *np = dev->of_node;
 char prop[32];
 int i;


 for (i = 0; i < 2; i++) {
  snprintf(prop, sizeof(prop), "asahi-kasei,in%d-single-end", i + 1);
  if (!of_get_property(np, prop, ((void*)0)))
   priv->ic |= 1 << i;
 }


 for (i = 0; i < 6; i++) {
  snprintf(prop, sizeof(prop), "asahi-kasei,out%d-single-end", i + 1);
  if (!of_get_property(np, prop, ((void*)0)))
   priv->oc |= 1 << i;
 }
}
