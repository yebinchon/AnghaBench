
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON (int) ;

unsigned int get_field(unsigned int data, unsigned int field)
{
 int i;

 if (WARN_ON(!field))
  return 0;

 for (i = 0; !(field & (1 << i)); )
  i++;

 return (data & field) >> i;
}
