
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long rol16 (unsigned long,int) ;

__attribute__((used)) static unsigned long atalk_sum_partial(const unsigned char *data,
           int len, unsigned long sum)
{

 while (len--) {
  sum += *data++;
  sum = rol16(sum, 1);
 }
 return sum;
}
