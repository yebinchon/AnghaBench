
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct to_kill {int dummy; } ;
struct page {int mapping; } ;
struct list_head {int dummy; } ;


 int GFP_NOIO ;
 scalar_t__ PageAnon (struct page*) ;
 int collect_procs_anon (struct page*,struct list_head*,struct to_kill**,int) ;
 int collect_procs_file (struct page*,struct list_head*,struct to_kill**,int) ;
 int kfree (struct to_kill*) ;
 struct to_kill* kmalloc (int,int ) ;

__attribute__((used)) static void collect_procs(struct page *page, struct list_head *tokill,
    int force_early)
{
 struct to_kill *tk;

 if (!page->mapping)
  return;

 tk = kmalloc(sizeof(struct to_kill), GFP_NOIO);
 if (!tk)
  return;
 if (PageAnon(page))
  collect_procs_anon(page, tokill, &tk, force_early);
 else
  collect_procs_file(page, tokill, &tk, force_early);
 kfree(tk);
}
