
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page_counter {unsigned long min; unsigned long low; TYPE_1__* parent; int low_usage; int min_usage; } ;
struct TYPE_2__ {int children_low_usage; int children_min_usage; } ;


 int atomic_long_add (long,int *) ;
 scalar_t__ atomic_long_read (int *) ;
 unsigned long atomic_long_xchg (int *,unsigned long) ;

__attribute__((used)) static void propagate_protected_usage(struct page_counter *c,
          unsigned long usage)
{
 unsigned long protected, old_protected;
 long delta;

 if (!c->parent)
  return;

 if (c->min || atomic_long_read(&c->min_usage)) {
  if (usage <= c->min)
   protected = usage;
  else
   protected = 0;

  old_protected = atomic_long_xchg(&c->min_usage, protected);
  delta = protected - old_protected;
  if (delta)
   atomic_long_add(delta, &c->parent->children_min_usage);
 }

 if (c->low || atomic_long_read(&c->low_usage)) {
  if (usage <= c->low)
   protected = usage;
  else
   protected = 0;

  old_protected = atomic_long_xchg(&c->low_usage, protected);
  delta = protected - old_protected;
  if (delta)
   atomic_long_add(delta, &c->parent->children_low_usage);
 }
}
