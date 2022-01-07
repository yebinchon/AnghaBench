
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int * enable ;
 scalar_t__* isapnp ;

__attribute__((used)) static int snd_interwave_isa_match(struct device *pdev,
       unsigned int dev)
{
 if (!enable[dev])
  return 0;




 return 1;
}
