
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int __isleap(long year)
{
 return (year) % 4 == 0 && ((year) % 100 != 0 || (year) % 400 == 0);
}
