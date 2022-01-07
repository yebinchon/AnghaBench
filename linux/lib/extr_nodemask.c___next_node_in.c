
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nodemask_t ;


 int MAX_NUMNODES ;
 int __first_node (int const*) ;
 int __next_node (int,int const*) ;

int __next_node_in(int node, const nodemask_t *srcp)
{
 int ret = __next_node(node, srcp);

 if (ret == MAX_NUMNODES)
  ret = __first_node(srcp);
 return ret;
}
