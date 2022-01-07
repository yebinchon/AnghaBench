
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int do_div (int,int) ;

__attribute__((used)) static inline uint64_t roundup_64(uint64_t x, uint32_t y)
{
 x += y - 1;
 do_div(x, y);
 return x * y;
}
