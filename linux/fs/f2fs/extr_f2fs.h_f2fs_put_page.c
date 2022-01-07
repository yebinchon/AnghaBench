
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int F2FS_P_SB (struct page*) ;
 int PageLocked (struct page*) ;
 int f2fs_bug_on (int ,int) ;
 int put_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static inline void f2fs_put_page(struct page *page, int unlock)
{
 if (!page)
  return;

 if (unlock) {
  f2fs_bug_on(F2FS_P_SB(page), !PageLocked(page));
  unlock_page(page);
 }
 put_page(page);
}
