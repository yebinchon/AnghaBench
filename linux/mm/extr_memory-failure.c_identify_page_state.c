
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_state {int mask; int res; } ;
struct page {int flags; } ;


 unsigned long PG_dirty ;
 struct page_state* error_states ;
 int page_action (struct page_state*,struct page*,unsigned long) ;

__attribute__((used)) static int identify_page_state(unsigned long pfn, struct page *p,
    unsigned long page_flags)
{
 struct page_state *ps;






 for (ps = error_states;; ps++)
  if ((p->flags & ps->mask) == ps->res)
   break;

 page_flags |= (p->flags & (1UL << PG_dirty));

 if (!ps->mask)
  for (ps = error_states;; ps++)
   if ((page_flags & ps->mask) == ps->res)
    break;
 return page_action(ps, p, pfn);
}
