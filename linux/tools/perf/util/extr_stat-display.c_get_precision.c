
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ceil (int ) ;
 int log10 (double) ;
 int lround (int ) ;

__attribute__((used)) static int get_precision(double num)
{
 if (num > 1)
  return 0;

 return lround(ceil(-log10(num)));
}
