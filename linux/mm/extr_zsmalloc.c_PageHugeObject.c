
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int PageOwnerPriv1 (struct page*) ;

__attribute__((used)) static int PageHugeObject(struct page *page)
{
 return PageOwnerPriv1(page);
}
