
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sidtab_convert_params {int (* func ) (struct context*,struct context*,int ) ;struct sidtab* target; int args; } ;
struct sidtab {size_t count; int lock; struct sidtab_convert_params* convert; int * roots; } ;
struct context {int str; scalar_t__ len; } ;


 int ENOMEM ;
 int EOVERFLOW ;
 size_t SIDTAB_MAX ;
 scalar_t__ context_cmp (struct context*,struct context*) ;
 int context_cpy (struct context*,struct context*) ;
 int context_destroy (struct context*) ;
 int pr_info (char*,int ) ;
 struct context* sidtab_do_lookup (struct sidtab*,size_t,int) ;
 int sidtab_find_context (int ,size_t*,size_t,size_t,struct context*,size_t*) ;
 size_t sidtab_level_from_count (size_t) ;
 int sidtab_rcache_push (struct sidtab*,size_t) ;
 int sidtab_rcache_search (struct sidtab*,struct context*,size_t*) ;
 size_t smp_load_acquire (size_t*) ;
 int smp_store_release (size_t*,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct context*,struct context*,int ) ;

__attribute__((used)) static int sidtab_reverse_lookup(struct sidtab *s, struct context *context,
     u32 *index)
{
 unsigned long flags;
 u32 count, count_locked, level, pos;
 struct sidtab_convert_params *convert;
 struct context *dst, *dst_convert;
 int rc;

 rc = sidtab_rcache_search(s, context, index);
 if (rc == 0)
  return 0;


 count = smp_load_acquire(&s->count);
 level = sidtab_level_from_count(count);

 pos = 0;
 rc = sidtab_find_context(s->roots[level], &pos, count, level,
     context, index);
 if (rc == 0) {
  sidtab_rcache_push(s, *index);
  return 0;
 }


 spin_lock_irqsave(&s->lock, flags);

 convert = s->convert;
 count_locked = s->count;
 level = sidtab_level_from_count(count_locked);


 while (count < count_locked) {
  if (context_cmp(sidtab_do_lookup(s, count, 0), context)) {
   sidtab_rcache_push(s, count);
   *index = count;
   rc = 0;
   goto out_unlock;
  }
  ++count;
 }


 rc = -EOVERFLOW;
 if (count >= SIDTAB_MAX)
  goto out_unlock;


 rc = -ENOMEM;
 dst = sidtab_do_lookup(s, count, 1);
 if (!dst)
  goto out_unlock;

 rc = context_cpy(dst, context);
 if (rc)
  goto out_unlock;





 if (convert) {
  rc = -ENOMEM;
  dst_convert = sidtab_do_lookup(convert->target, count, 1);
  if (!dst_convert) {
   context_destroy(dst);
   goto out_unlock;
  }

  rc = convert->func(context, dst_convert, convert->args);
  if (rc) {
   context_destroy(dst);
   goto out_unlock;
  }


  convert->target->count = count + 1;
 }

 if (context->len)
  pr_info("SELinux:  Context %s is not valid (left unmapped).\n",
   context->str);

 sidtab_rcache_push(s, count);
 *index = count;


 smp_store_release(&s->count, count + 1);

 rc = 0;
out_unlock:
 spin_unlock_irqrestore(&s->lock, flags);
 return rc;
}
