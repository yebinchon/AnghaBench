
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long convert_unit(unsigned long value, char *unit)
{
 *unit = ' ';

 if (value > 1000) {
  value /= 1000;
  *unit = 'K';
 }

 if (value > 1000) {
  value /= 1000;
  *unit = 'M';
 }

 if (value > 1000) {
  value /= 1000;
  *unit = 'G';
 }

 return value;
}
