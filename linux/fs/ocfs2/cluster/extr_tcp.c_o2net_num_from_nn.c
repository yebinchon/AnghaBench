
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct o2net_node* u8 ;
struct o2net_node {int dummy; } ;


 int BUG_ON (int ) ;
 int o2net_nodes ;

__attribute__((used)) static u8 o2net_num_from_nn(struct o2net_node *nn)
{
 BUG_ON(nn == ((void*)0));
 return nn - o2net_nodes;
}
