
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct asoc_simple_data {int dummy; } ;


 int * PREFIX ;
 int asoc_simple_parse_convert (struct device*,struct device_node*,int *,struct asoc_simple_data*) ;
 struct device_node* of_get_parent (struct device_node*) ;
 struct device_node* of_graph_get_port_parent (struct device_node*) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static void graph_parse_convert(struct device *dev,
    struct device_node *ep,
    struct asoc_simple_data *adata)
{
 struct device_node *top = dev->of_node;
 struct device_node *port = of_get_parent(ep);
 struct device_node *ports = of_get_parent(port);
 struct device_node *node = of_graph_get_port_parent(ep);

 asoc_simple_parse_convert(dev, top, ((void*)0), adata);
 asoc_simple_parse_convert(dev, node, PREFIX, adata);
 asoc_simple_parse_convert(dev, ports, ((void*)0), adata);
 asoc_simple_parse_convert(dev, port, ((void*)0), adata);
 asoc_simple_parse_convert(dev, ep, ((void*)0), adata);

 of_node_put(port);
 of_node_put(ports);
 of_node_put(node);
}
