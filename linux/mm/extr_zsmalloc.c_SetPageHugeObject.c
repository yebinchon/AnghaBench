
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int SetPageOwnerPriv1 (struct page*) ;

__attribute__((used)) static void SetPageHugeObject(struct page *page)
{
 SetPageOwnerPriv1(page);
}
