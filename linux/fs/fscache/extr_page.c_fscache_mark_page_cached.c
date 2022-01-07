
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int index; } ;
struct TYPE_6__ {TYPE_2__* object; } ;
struct fscache_retrieval {int mapping; TYPE_3__ op; } ;
struct fscache_cookie {int netfs_data; TYPE_1__* def; } ;
struct TYPE_5__ {struct fscache_cookie* cookie; } ;
struct TYPE_4__ {int (* mark_page_cached ) (int ,int ,struct page*) ;int name; } ;


 scalar_t__ TestSetPageFsCache (struct page*) ;
 int _debug (char*,struct page*,int ) ;
 int atomic_inc (int *) ;
 int fscache_n_marks ;
 int fscache_page_cached ;
 int pr_warn (char*,int ,int ) ;
 int stub1 (int ,int ,struct page*) ;
 int trace_fscache_page (struct fscache_cookie*,struct page*,int ) ;

void fscache_mark_page_cached(struct fscache_retrieval *op, struct page *page)
{
 struct fscache_cookie *cookie = op->op.object->cookie;





 trace_fscache_page(cookie, page, fscache_page_cached);

 _debug("- mark %p{%lx}", page, page->index);
 if (TestSetPageFsCache(page)) {
  static bool once_only;
  if (!once_only) {
   once_only = 1;
   pr_warn("Cookie type %s marked page %lx multiple times\n",
    cookie->def->name, page->index);
  }
 }

 if (cookie->def->mark_page_cached)
  cookie->def->mark_page_cached(cookie->netfs_data,
           op->mapping, page);
}
