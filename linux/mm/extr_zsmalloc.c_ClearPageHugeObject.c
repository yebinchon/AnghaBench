
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int ClearPageOwnerPriv1 (struct page*) ;

__attribute__((used)) static void ClearPageHugeObject(struct page *page)
{
 ClearPageOwnerPriv1(page);
}
