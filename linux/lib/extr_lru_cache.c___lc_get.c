
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {int flags; scalar_t__ pending_changes; scalar_t__ max_pending_changes; int used; int locked; int misses; int in_use; int hits; int starving; } ;
struct lc_element {scalar_t__ lc_new_number; scalar_t__ lc_number; int refcnt; int list; } ;


 int BUG_ON (int) ;
 unsigned int LC_GET_MAY_CHANGE ;
 unsigned int LC_GET_MAY_USE_UNCOMMITTED ;
 int LC_STARVING ;
 int PARANOIA_ENTRY () ;
 int RETURN (struct lc_element*) ;
 int __LC_DIRTY ;
 int __LC_LOCKED ;
 int __LC_STARVING ;
 struct lc_element* __lc_find (struct lru_cache*,unsigned int,int) ;
 int __set_bit (int ,int*) ;
 int clear_bit (int ,int*) ;
 struct lc_element* lc_prepare_for_change (struct lru_cache*,unsigned int) ;
 int lc_unused_element_available (struct lru_cache*) ;
 int list_move (int *,int *) ;
 int test_and_set_bit (int ,int*) ;
 scalar_t__ test_bit (int ,int*) ;

__attribute__((used)) static struct lc_element *__lc_get(struct lru_cache *lc, unsigned int enr, unsigned int flags)
{
 struct lc_element *e;

 PARANOIA_ENTRY();
 if (lc->flags & LC_STARVING) {
  ++lc->starving;
  RETURN(((void*)0));
 }

 e = __lc_find(lc, enr, 1);




 if (e) {
  if (e->lc_new_number != e->lc_number) {




   if (!(flags & LC_GET_MAY_USE_UNCOMMITTED))
    RETURN(((void*)0));


   ++e->refcnt;
   ++lc->hits;
   RETURN(e);
  }

  ++lc->hits;
  if (e->refcnt++ == 0)
   lc->used++;
  list_move(&e->list, &lc->in_use);
  RETURN(e);
 }


 ++lc->misses;
 if (!(flags & LC_GET_MAY_CHANGE))
  RETURN(((void*)0));



 test_and_set_bit(__LC_DIRTY, &lc->flags);




 if (test_bit(__LC_LOCKED, &lc->flags)) {
  ++lc->locked;
  RETURN(((void*)0));
 }




 if (!lc_unused_element_available(lc)) {
  __set_bit(__LC_STARVING, &lc->flags);
  RETURN(((void*)0));
 }




 if (lc->pending_changes >= lc->max_pending_changes)
  RETURN(((void*)0));

 e = lc_prepare_for_change(lc, enr);
 BUG_ON(!e);

 clear_bit(__LC_STARVING, &lc->flags);
 BUG_ON(++e->refcnt != 1);
 lc->used++;
 lc->pending_changes++;

 RETURN(e);
}
