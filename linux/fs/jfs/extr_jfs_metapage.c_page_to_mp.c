
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct metapage {int dummy; } ;


 scalar_t__ PagePrivate (struct page*) ;
 scalar_t__ page_private (struct page*) ;

__attribute__((used)) static inline struct metapage *page_to_mp(struct page *page, int offset)
{
 return PagePrivate(page) ? (struct metapage *)page_private(page) : ((void*)0);
}
