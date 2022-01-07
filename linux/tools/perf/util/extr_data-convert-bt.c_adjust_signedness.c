
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long long adjust_signedness(unsigned long long value_int, int size)
{
 unsigned long long value_mask;





 switch (size) {
 case 1:
  value_mask = 0x7fULL;
  break;
 case 2:
  value_mask = 0x7fffULL;
  break;
 case 4:
  value_mask = 0x7fffffffULL;
  break;
 case 8:





 default:

  return value_int;
 }


 if ((value_int & (~0ULL - value_mask)) == 0)
  return value_int;


 return (value_int & value_mask) | ~value_mask;
}
