
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcm3060_priv {int out_se; } ;
struct device_node {int dummy; } ;


 int of_property_read_bool (struct device_node const*,char*) ;

__attribute__((used)) static void pcm3060_parse_dt(const struct device_node *np,
        struct pcm3060_priv *priv)
{
 priv->out_se = of_property_read_bool(np, "ti,out-single-ended");
}
