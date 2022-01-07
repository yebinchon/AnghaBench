
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int MIGRATE_PCPTYPES ;
 int MIGRATE_UNMOVABLE ;
 int PB_migrate ;
 int PB_migrate_end ;
 scalar_t__ page_group_by_mobility_disabled ;
 int set_pageblock_flags_group (struct page*,unsigned long,int ,int ) ;
 scalar_t__ unlikely (int) ;

void set_pageblock_migratetype(struct page *page, int migratetype)
{
 if (unlikely(page_group_by_mobility_disabled &&
       migratetype < MIGRATE_PCPTYPES))
  migratetype = MIGRATE_UNMOVABLE;

 set_pageblock_flags_group(page, (unsigned long)migratetype,
     PB_migrate, PB_migrate_end);
}
