
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;


 int MIGRATEPAGE_SUCCESS ;
 int MIGRATE_SYNC_NO_COPY ;
 int migrate_huge_page_move_mapping (struct address_space*,struct page*,struct page*) ;
 int migrate_page_copy (struct page*,struct page*) ;
 int migrate_page_states (struct page*,struct page*) ;
 scalar_t__ page_private (struct page*) ;
 int set_page_private (struct page*,scalar_t__) ;

__attribute__((used)) static int hugetlbfs_migrate_page(struct address_space *mapping,
    struct page *newpage, struct page *page,
    enum migrate_mode mode)
{
 int rc;

 rc = migrate_huge_page_move_mapping(mapping, newpage, page);
 if (rc != MIGRATEPAGE_SUCCESS)
  return rc;







 if (page_private(page)) {
  set_page_private(newpage, page_private(page));
  set_page_private(page, 0);
 }

 if (mode != MIGRATE_SYNC_NO_COPY)
  migrate_page_copy(newpage, page);
 else
  migrate_page_states(newpage, page);

 return MIGRATEPAGE_SUCCESS;
}
