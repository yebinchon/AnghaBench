
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device_node {int dummy; } ;
typedef int __be32 ;


 scalar_t__ be32_to_cpup (int const*) ;
 int * of_get_property (struct device_node*,char const*,int*) ;

int snd_soc_of_get_slot_mask(struct device_node *np,
        const char *prop_name,
        unsigned int *mask)
{
 u32 val;
 const __be32 *of_slot_mask = of_get_property(np, prop_name, &val);
 int i;

 if (!of_slot_mask)
  return 0;
 val /= sizeof(u32);
 for (i = 0; i < val; i++)
  if (be32_to_cpup(&of_slot_mask[i]))
   *mask |= (1 << i);

 return val;
}
