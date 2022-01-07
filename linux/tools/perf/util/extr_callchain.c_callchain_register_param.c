
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callchain_param {int mode; int sort; } ;







 int sort_chain_flat ;
 int sort_chain_graph_abs ;
 int sort_chain_graph_rel ;

int callchain_register_param(struct callchain_param *param)
{
 switch (param->mode) {
 case 130:
  param->sort = sort_chain_graph_abs;
  break;
 case 129:
  param->sort = sort_chain_graph_rel;
  break;
 case 132:
 case 131:
  param->sort = sort_chain_flat;
  break;
 case 128:
 default:
  return -1;
 }
 return 0;
}
