
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int max_node_num ;
 int set_max_node_num () ;
 scalar_t__ unlikely (int) ;

int cpu__max_node(void)
{
 if (unlikely(!max_node_num))
  set_max_node_num();

 return max_node_num;
}
