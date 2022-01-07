
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_dai_props {int mclk_fs; } ;
struct device_node {int dummy; } ;


 struct device_node* of_get_parent (struct device_node*) ;
 struct device_node* of_graph_get_port_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;

__attribute__((used)) static void graph_parse_mclk_fs(struct device_node *top,
    struct device_node *ep,
    struct simple_dai_props *props)
{
 struct device_node *port = of_get_parent(ep);
 struct device_node *ports = of_get_parent(port);
 struct device_node *node = of_graph_get_port_parent(ep);

 of_property_read_u32(top, "mclk-fs", &props->mclk_fs);
 of_property_read_u32(ports, "mclk-fs", &props->mclk_fs);
 of_property_read_u32(port, "mclk-fs", &props->mclk_fs);
 of_property_read_u32(ep, "mclk-fs", &props->mclk_fs);

 of_node_put(port);
 of_node_put(ports);
 of_node_put(node);
}
