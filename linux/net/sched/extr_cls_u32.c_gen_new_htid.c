
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tc_u_hnode {int dummy; } ;
struct tc_u_common {int handle_idr; } ;


 int GFP_KERNEL ;
 int idr_alloc_cyclic (int *,struct tc_u_hnode*,int,int,int ) ;

__attribute__((used)) static u32 gen_new_htid(struct tc_u_common *tp_c, struct tc_u_hnode *ptr)
{
 int id = idr_alloc_cyclic(&tp_c->handle_idr, ptr, 1, 0x7FF, GFP_KERNEL);
 if (id < 0)
  return 0;
 return (id | 0x800U) << 20;
}
