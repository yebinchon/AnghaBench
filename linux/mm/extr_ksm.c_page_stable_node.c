
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stable_node {int dummy; } ;
struct page {int dummy; } ;


 scalar_t__ PageKsm (struct page*) ;
 struct stable_node* page_rmapping (struct page*) ;

__attribute__((used)) static inline struct stable_node *page_stable_node(struct page *page)
{
 return PageKsm(page) ? page_rmapping(page) : ((void*)0);
}
