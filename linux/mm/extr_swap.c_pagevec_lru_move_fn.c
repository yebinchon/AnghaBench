
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pglist_data {int lru_lock; } ;
struct pagevec {struct page** pages; int nr; } ;
typedef struct page page ;
typedef struct lruvec lruvec ;


 struct lruvec* mem_cgroup_page_lruvec (struct page*,struct pglist_data*) ;
 struct pglist_data* page_pgdat (struct page*) ;
 int pagevec_count (struct pagevec*) ;
 int pagevec_reinit (struct pagevec*) ;
 int release_pages (struct page**,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 void stub1 (struct page*,struct lruvec*,void*) ;

__attribute__((used)) static void pagevec_lru_move_fn(struct pagevec *pvec,
 void (*move_fn)(struct page *page, struct lruvec *lruvec, void *arg),
 void *arg)
{
 int i;
 struct pglist_data *pgdat = ((void*)0);
 struct lruvec *lruvec;
 unsigned long flags = 0;

 for (i = 0; i < pagevec_count(pvec); i++) {
  struct page *page = pvec->pages[i];
  struct pglist_data *pagepgdat = page_pgdat(page);

  if (pagepgdat != pgdat) {
   if (pgdat)
    spin_unlock_irqrestore(&pgdat->lru_lock, flags);
   pgdat = pagepgdat;
   spin_lock_irqsave(&pgdat->lru_lock, flags);
  }

  lruvec = mem_cgroup_page_lruvec(page, pgdat);
  (*move_fn)(page, lruvec, arg);
 }
 if (pgdat)
  spin_unlock_irqrestore(&pgdat->lru_lock, flags);
 release_pages(pvec->pages, pvec->nr);
 pagevec_reinit(pvec);
}
