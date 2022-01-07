
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



size_t hex_width(u64 v)
{
 size_t n = 1;

 while ((v >>= 4))
  ++n;

 return n;
}
