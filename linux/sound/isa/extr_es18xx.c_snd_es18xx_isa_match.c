
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__* enable ;
 int is_isapnp_selected (unsigned int) ;

__attribute__((used)) static int snd_es18xx_isa_match(struct device *pdev, unsigned int dev)
{
 return enable[dev] && !is_isapnp_selected(dev);
}
