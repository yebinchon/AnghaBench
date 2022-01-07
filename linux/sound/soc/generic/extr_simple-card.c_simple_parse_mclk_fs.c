
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_dai_props {int mclk_fs; } ;
struct device_node {int dummy; } ;
typedef int prop ;


 char* PREFIX ;
 struct device_node* of_get_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static void simple_parse_mclk_fs(struct device_node *top,
     struct device_node *cpu,
     struct device_node *codec,
     struct simple_dai_props *props,
     char *prefix)
{
 struct device_node *node = of_get_parent(cpu);
 char prop[128];

 snprintf(prop, sizeof(prop), "%smclk-fs", PREFIX);
 of_property_read_u32(top, prop, &props->mclk_fs);

 snprintf(prop, sizeof(prop), "%smclk-fs", prefix);
 of_property_read_u32(node, prop, &props->mclk_fs);
 of_property_read_u32(cpu, prop, &props->mclk_fs);
 of_property_read_u32(codec, prop, &props->mclk_fs);

 of_node_put(node);
}
