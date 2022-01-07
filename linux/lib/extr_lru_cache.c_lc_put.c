
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {int flags; int used; int lru; } ;
struct lc_element {scalar_t__ refcnt; scalar_t__ lc_number; scalar_t__ lc_new_number; int list; } ;


 int BUG_ON (int) ;
 int PARANOIA_ENTRY () ;
 int PARANOIA_LC_ELEMENT (struct lru_cache*,struct lc_element*) ;
 int RETURN (scalar_t__) ;
 int __LC_STARVING ;
 int clear_bit_unlock (int ,int *) ;
 int list_move (int *,int *) ;

unsigned int lc_put(struct lru_cache *lc, struct lc_element *e)
{
 PARANOIA_ENTRY();
 PARANOIA_LC_ELEMENT(lc, e);
 BUG_ON(e->refcnt == 0);
 BUG_ON(e->lc_number != e->lc_new_number);
 if (--e->refcnt == 0) {

  list_move(&e->list, &lc->lru);
  lc->used--;
  clear_bit_unlock(__LC_STARVING, &lc->flags);
 }
 RETURN(e->refcnt);
}
