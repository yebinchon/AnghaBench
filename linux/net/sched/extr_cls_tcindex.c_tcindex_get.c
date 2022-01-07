
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef void tcindex_filter_result ;
struct tcindex_data {scalar_t__ alloc_hash; scalar_t__ perfect; } ;
struct tcf_proto {int root; } ;


 int pr_debug (char*,struct tcf_proto*,scalar_t__) ;
 struct tcindex_data* rtnl_dereference (int ) ;
 scalar_t__ tcindex_filter_is_set (void*) ;
 void* tcindex_lookup (struct tcindex_data*,scalar_t__) ;

__attribute__((used)) static void *tcindex_get(struct tcf_proto *tp, u32 handle)
{
 struct tcindex_data *p = rtnl_dereference(tp->root);
 struct tcindex_filter_result *r;

 pr_debug("tcindex_get(tp %p,handle 0x%08x)\n", tp, handle);
 if (p->perfect && handle >= p->alloc_hash)
  return ((void*)0);
 r = tcindex_lookup(p, handle);
 return r && tcindex_filter_is_set(r) ? r : ((void*)0);
}
