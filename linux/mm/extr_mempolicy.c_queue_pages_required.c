
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_pages {unsigned long flags; int * nmask; } ;
struct page {int dummy; } ;


 unsigned long MPOL_MF_INVERT ;
 int node_isset (int,int ) ;
 int page_to_nid (struct page*) ;

__attribute__((used)) static inline bool queue_pages_required(struct page *page,
     struct queue_pages *qp)
{
 int nid = page_to_nid(page);
 unsigned long flags = qp->flags;

 return node_isset(nid, *qp->nmask) == !(flags & MPOL_MF_INVERT);
}
