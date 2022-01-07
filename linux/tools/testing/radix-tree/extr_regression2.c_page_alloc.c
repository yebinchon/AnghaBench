
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {scalar_t__ index; } ;


 struct page* malloc (int) ;
 int page_count ;

__attribute__((used)) static struct page *page_alloc(void)
{
 struct page *p;
 p = malloc(sizeof(struct page));
 p->index = page_count++;

 return p;
}
