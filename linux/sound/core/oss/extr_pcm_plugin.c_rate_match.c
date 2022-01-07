
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int rate_match(unsigned int src_rate, unsigned int dst_rate)
{
 unsigned int low = (src_rate * 95) / 100;
 unsigned int high = (src_rate * 105) / 100;
 return dst_rate >= low && dst_rate <= high;
}
