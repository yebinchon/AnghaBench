
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool gup_fast_permitted(unsigned long start, unsigned long end)
{
 return 1;
}
