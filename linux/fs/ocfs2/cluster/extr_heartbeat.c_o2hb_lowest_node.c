
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_first_bit (unsigned long*,int) ;

__attribute__((used)) static int o2hb_lowest_node(unsigned long *nodes, int numbits)
{
 return find_first_bit(nodes, numbits);
}
