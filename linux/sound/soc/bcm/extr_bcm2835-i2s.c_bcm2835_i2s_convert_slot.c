
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int bcm2835_i2s_convert_slot(unsigned int slot, unsigned int odd_offset)
{
 if (!odd_offset)
  return slot;

 if (slot & 1)
  return (slot >> 1) + odd_offset;

 return slot >> 1;
}
