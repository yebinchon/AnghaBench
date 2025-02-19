
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct page {int index; } ;
struct TYPE_6__ {int key; } ;
struct cleancache_filekey {TYPE_2__ u; } ;
struct address_space {TYPE_4__* host; } ;
struct TYPE_8__ {TYPE_1__* i_sb; } ;
struct TYPE_7__ {int (* invalidate_page ) (int,struct cleancache_filekey,int ) ;} ;
struct TYPE_5__ {int cleancache_poolid; } ;


 int PageLocked (struct page*) ;
 int VM_BUG_ON_PAGE (int,struct page*) ;
 scalar_t__ cleancache_get_key (TYPE_4__*,struct cleancache_filekey*) ;
 int cleancache_invalidates ;
 TYPE_3__* cleancache_ops ;
 int stub1 (int,struct cleancache_filekey,int ) ;

void __cleancache_invalidate_page(struct address_space *mapping,
     struct page *page)
{

 int pool_id = mapping->host->i_sb->cleancache_poolid;
 struct cleancache_filekey key = { .u.key = { 0 } };

 if (!cleancache_ops)
  return;

 if (pool_id >= 0) {
  VM_BUG_ON_PAGE(!PageLocked(page), page);
  if (cleancache_get_key(mapping->host, &key) >= 0) {
   cleancache_ops->invalidate_page(pool_id,
     key, page->index);
   cleancache_invalidates++;
  }
 }
}
