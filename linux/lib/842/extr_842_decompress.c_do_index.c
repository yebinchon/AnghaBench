
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sw842_param {int dummy; } ;


 int EINVAL ;
 int I2_BITS ;
 int I2_FIFO_SIZE ;
 int I4_BITS ;
 int I4_FIFO_SIZE ;
 int I8_BITS ;
 int I8_FIFO_SIZE ;
 int __do_index (struct sw842_param*,int,int ,int ) ;

__attribute__((used)) static int do_index(struct sw842_param *p, u8 n)
{
 switch (n) {
 case 2:
  return __do_index(p, 2, I2_BITS, I2_FIFO_SIZE);
 case 4:
  return __do_index(p, 4, I4_BITS, I4_FIFO_SIZE);
 case 8:
  return __do_index(p, 8, I8_BITS, I8_FIFO_SIZE);
 default:
  return -EINVAL;
 }
}
