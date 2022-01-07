
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 size_t N_MEMORY ;
 struct page* new_page_nodemask (struct page*,int,int *) ;
 int * node_states ;
 int page_to_nid (struct page*) ;

__attribute__((used)) static struct page *new_page(struct page *p, unsigned long private)
{
 int nid = page_to_nid(p);

 return new_page_nodemask(p, nid, &node_states[N_MEMORY]);
}
