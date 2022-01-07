
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_last_bit (unsigned long*,int) ;

__attribute__((used)) static int o2hb_highest_node(unsigned long *nodes, int numbits)
{
 return find_last_bit(nodes, numbits);
}
