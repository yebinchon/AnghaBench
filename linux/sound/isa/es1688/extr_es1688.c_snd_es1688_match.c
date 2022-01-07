
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__* enable ;
 int is_isapnp_selected (unsigned int) ;

__attribute__((used)) static int snd_es1688_match(struct device *dev, unsigned int n)
{
 return enable[n] && !is_isapnp_selected(n);
}
