
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page_stat {int dummy; } ;


 struct page_stat* __page_stat__findnew_alloc (struct page_stat*,int) ;

__attribute__((used)) static struct page_stat *page_stat__find_alloc(struct page_stat *pstat)
{
 return __page_stat__findnew_alloc(pstat, 0);
}
