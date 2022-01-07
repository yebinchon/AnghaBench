
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* rlim_map ;

int aa_map_resource(int resource)
{
 return rlim_map[resource];
}
