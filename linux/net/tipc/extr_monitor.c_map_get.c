
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static int map_get(u64 up_map, int i)
{
 return (up_map & (1 << i)) >> i;
}
