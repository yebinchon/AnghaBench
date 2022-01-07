
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int NUMA_NO_NODE ;
 int page_to_nid (struct page*) ;

__attribute__((used)) static inline int node_match(struct page *page, int node)
{




 return 1;
}
