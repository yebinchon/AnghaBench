
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ MIGRATE_HIGHATOMIC ;
 scalar_t__ get_pageblock_migratetype (struct page*) ;

__attribute__((used)) static inline bool is_migrate_highatomic_page(struct page *page)
{
 return get_pageblock_migratetype(page) == MIGRATE_HIGHATOMIC;
}
