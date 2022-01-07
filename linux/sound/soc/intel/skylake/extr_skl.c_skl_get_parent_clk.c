
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct skl_clk_parent_src {scalar_t__ clk_id; } ;


 unsigned int ARRAY_SIZE (struct skl_clk_parent_src*) ;
 struct skl_clk_parent_src* skl_clk_src ;

struct skl_clk_parent_src *skl_get_parent_clk(u8 clk_id)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(skl_clk_src); i++) {
  if (skl_clk_src[i].clk_id == clk_id)
   return &skl_clk_src[i];
 }

 return ((void*)0);
}
