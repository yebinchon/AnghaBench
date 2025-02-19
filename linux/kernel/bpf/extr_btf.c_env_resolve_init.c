
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct btf_verifier_env {scalar_t__* visit_states; struct btf* btf; } ;
struct btf {scalar_t__* resolved_ids; scalar_t__* resolved_sizes; scalar_t__ nr_types; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __GFP_NOWARN ;
 scalar_t__* kvcalloc (scalar_t__,int,int) ;
 int kvfree (scalar_t__*) ;

__attribute__((used)) static int env_resolve_init(struct btf_verifier_env *env)
{
 struct btf *btf = env->btf;
 u32 nr_types = btf->nr_types;
 u32 *resolved_sizes = ((void*)0);
 u32 *resolved_ids = ((void*)0);
 u8 *visit_states = ((void*)0);


 resolved_sizes = kvcalloc(nr_types + 1, sizeof(*resolved_sizes),
      GFP_KERNEL | __GFP_NOWARN);
 if (!resolved_sizes)
  goto nomem;

 resolved_ids = kvcalloc(nr_types + 1, sizeof(*resolved_ids),
    GFP_KERNEL | __GFP_NOWARN);
 if (!resolved_ids)
  goto nomem;

 visit_states = kvcalloc(nr_types + 1, sizeof(*visit_states),
    GFP_KERNEL | __GFP_NOWARN);
 if (!visit_states)
  goto nomem;

 btf->resolved_sizes = resolved_sizes;
 btf->resolved_ids = resolved_ids;
 env->visit_states = visit_states;

 return 0;

nomem:
 kvfree(resolved_sizes);
 kvfree(resolved_ids);
 kvfree(visit_states);
 return -ENOMEM;
}
