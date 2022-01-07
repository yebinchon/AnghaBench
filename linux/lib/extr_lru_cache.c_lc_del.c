
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lru_cache {int free; } ;
struct lc_element {int list; int colision; int lc_new_number; int lc_number; int refcnt; } ;


 int BUG_ON (int ) ;
 int LC_FREE ;
 int PARANOIA_ENTRY () ;
 int PARANOIA_LC_ELEMENT (struct lru_cache*,struct lc_element*) ;
 int RETURN () ;
 int hlist_del_init (int *) ;
 int list_move (int *,int *) ;

void lc_del(struct lru_cache *lc, struct lc_element *e)
{
 PARANOIA_ENTRY();
 PARANOIA_LC_ELEMENT(lc, e);
 BUG_ON(e->refcnt);

 e->lc_number = e->lc_new_number = LC_FREE;
 hlist_del_init(&e->colision);
 list_move(&e->list, &lc->free);
 RETURN();
}
