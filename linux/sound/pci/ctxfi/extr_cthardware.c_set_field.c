
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ WARN_ON (int) ;

void set_field(unsigned int *data, unsigned int field, unsigned int value)
{
 int i;

 if (WARN_ON(!field))
  return;

 for (i = 0; !(field & (1 << i)); )
  i++;

 *data = (*data & (~field)) | ((value << i) & field);
}
