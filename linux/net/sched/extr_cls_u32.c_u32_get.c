
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {int root; struct tc_u_common* data; } ;
typedef void tc_u_hnode ;
struct tc_u_common {int dummy; } ;


 scalar_t__ TC_U32_HTID (int ) ;
 scalar_t__ TC_U32_KEY (int ) ;
 scalar_t__ TC_U32_ROOT ;
 void* rtnl_dereference (int ) ;
 void* u32_lookup_ht (struct tc_u_common*,scalar_t__) ;
 void* u32_lookup_key (void*,int ) ;

__attribute__((used)) static void *u32_get(struct tcf_proto *tp, u32 handle)
{
 struct tc_u_hnode *ht;
 struct tc_u_common *tp_c = tp->data;

 if (TC_U32_HTID(handle) == TC_U32_ROOT)
  ht = rtnl_dereference(tp->root);
 else
  ht = u32_lookup_ht(tp_c, TC_U32_HTID(handle));

 if (!ht)
  return ((void*)0);

 if (TC_U32_KEY(handle) == 0)
  return ht;

 return u32_lookup_key(ht, handle);
}
