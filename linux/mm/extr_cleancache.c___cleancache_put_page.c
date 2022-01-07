
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct page {int index; TYPE_3__* mapping; } ;
struct TYPE_6__ {int key; } ;
struct cleancache_filekey {TYPE_1__ u; } ;
struct TYPE_10__ {TYPE_2__* i_sb; } ;
struct TYPE_9__ {int (* put_page ) (int,struct cleancache_filekey,int ,struct page*) ;} ;
struct TYPE_8__ {TYPE_5__* host; } ;
struct TYPE_7__ {int cleancache_poolid; } ;


 int PageLocked (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 scalar_t__ cleancache_get_key (TYPE_5__*,struct cleancache_filekey*) ;
 TYPE_4__* cleancache_ops ;
 int cleancache_puts ;
 int stub1 (int,struct cleancache_filekey,int ,struct page*) ;

void __cleancache_put_page(struct page *page)
{
 int pool_id;
 struct cleancache_filekey key = { .u.key = { 0 } };

 if (!cleancache_ops) {
  cleancache_puts++;
  return;
 }

 VM_BUG_ON_PAGE(!PageLocked(page), page);
 pool_id = page->mapping->host->i_sb->cleancache_poolid;
 if (pool_id >= 0 &&
  cleancache_get_key(page->mapping->host, &key) >= 0) {
  cleancache_ops->put_page(pool_id, key, page->index, page);
  cleancache_puts++;
 }
}
