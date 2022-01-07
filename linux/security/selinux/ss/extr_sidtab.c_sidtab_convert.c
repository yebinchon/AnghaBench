
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sidtab_convert_params {TYPE_1__* target; } ;
struct sidtab {size_t count; int lock; struct sidtab_convert_params* convert; int * roots; } ;
struct TYPE_2__ {size_t count; int * roots; } ;


 int EBUSY ;
 int ENOMEM ;
 int pr_info (char*,size_t) ;
 int sidtab_convert_tree (int *,int *,size_t*,size_t,size_t,struct sidtab_convert_params*) ;
 scalar_t__ sidtab_do_lookup (TYPE_1__*,size_t,int) ;
 size_t sidtab_level_from_count (size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int sidtab_convert(struct sidtab *s, struct sidtab_convert_params *params)
{
 unsigned long flags;
 u32 count, level, pos;
 int rc;

 spin_lock_irqsave(&s->lock, flags);


 if (s->convert) {
  spin_unlock_irqrestore(&s->lock, flags);
  return -EBUSY;
 }

 count = s->count;
 level = sidtab_level_from_count(count);




 rc = sidtab_do_lookup(params->target, count - 1, 1) ? 0 : -ENOMEM;
 if (rc) {
  spin_unlock_irqrestore(&s->lock, flags);
  return rc;
 }


 params->target->count = count;


 s->convert = params;


 spin_unlock_irqrestore(&s->lock, flags);

 pr_info("SELinux:  Converting %u SID table entries...\n", count);


 pos = 0;
 rc = sidtab_convert_tree(&params->target->roots[level],
     &s->roots[level], &pos, count, level, params);
 if (rc) {

  spin_lock_irqsave(&s->lock, flags);
  s->convert = ((void*)0);
  spin_unlock_irqrestore(&s->lock, flags);
 }
 return rc;
}
