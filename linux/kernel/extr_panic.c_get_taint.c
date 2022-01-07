
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long tainted_mask ;

unsigned long get_taint(void)
{
 return tainted_mask;
}
