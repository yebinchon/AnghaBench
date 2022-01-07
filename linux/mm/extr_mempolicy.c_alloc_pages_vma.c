
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int preferred_node; } ;
struct mempolicy {scalar_t__ mode; int flags; TYPE_1__ v; } ;
typedef int nodemask_t ;
typedef int gfp_t ;


 int CONFIG_TRANSPARENT_HUGEPAGE ;
 scalar_t__ IS_ENABLED (int ) ;
 int MPOL_F_LOCAL ;
 scalar_t__ MPOL_INTERLEAVE ;
 scalar_t__ MPOL_PREFERRED ;
 scalar_t__ PAGE_SHIFT ;
 int __GFP_DIRECT_RECLAIM ;
 int __GFP_NORETRY ;
 int __GFP_THISNODE ;
 struct page* __alloc_pages_node (int,int,int) ;
 struct page* __alloc_pages_nodemask (int,int,int,int *) ;
 struct page* alloc_page_interleave (int,int,unsigned int) ;
 struct mempolicy* get_vma_policy (struct vm_area_struct*,unsigned long) ;
 unsigned int interleave_nid (struct mempolicy*,struct vm_area_struct*,unsigned long,scalar_t__) ;
 int mpol_cond_put (struct mempolicy*) ;
 scalar_t__ node_isset (int,int ) ;
 int policy_node (int,struct mempolicy*,int) ;
 int * policy_nodemask (int,struct mempolicy*) ;
 scalar_t__ unlikely (int) ;

struct page *
alloc_pages_vma(gfp_t gfp, int order, struct vm_area_struct *vma,
  unsigned long addr, int node, bool hugepage)
{
 struct mempolicy *pol;
 struct page *page;
 int preferred_nid;
 nodemask_t *nmask;

 pol = get_vma_policy(vma, addr);

 if (pol->mode == MPOL_INTERLEAVE) {
  unsigned nid;

  nid = interleave_nid(pol, vma, addr, PAGE_SHIFT + order);
  mpol_cond_put(pol);
  page = alloc_page_interleave(gfp, order, nid);
  goto out;
 }

 if (unlikely(IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE) && hugepage)) {
  int hpage_node = node;
  if (pol->mode == MPOL_PREFERRED && !(pol->flags & MPOL_F_LOCAL))
   hpage_node = pol->v.preferred_node;

  nmask = policy_nodemask(gfp, pol);
  if (!nmask || node_isset(hpage_node, *nmask)) {
   mpol_cond_put(pol);
   page = __alloc_pages_node(hpage_node,
      gfp | __GFP_THISNODE, order);







   if (!page && (gfp & __GFP_DIRECT_RECLAIM))
    page = __alloc_pages_node(hpage_node,
      gfp | __GFP_NORETRY, order);

   goto out;
  }
 }

 nmask = policy_nodemask(gfp, pol);
 preferred_nid = policy_node(gfp, pol, node);
 page = __alloc_pages_nodemask(gfp, order, preferred_nid, nmask);
 mpol_cond_put(pol);
out:
 return page;
}
