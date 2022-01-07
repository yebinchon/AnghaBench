
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stable_node {scalar_t__ rmap_hlist_len; int hlist; } ;
struct rmap_item {int address; int nid; int node; int anon_vma; int hlist; struct stable_node* head; } ;
struct page {int dummy; } ;
struct TYPE_2__ {int seqnr; } ;


 int BUG_ON (int) ;
 int GET_KSM_PAGE_LOCK ;
 scalar_t__ NUMA (int ) ;
 int PAGE_MASK ;
 int STABLE_FLAG ;
 int UNSTABLE_FLAG ;
 int VM_BUG_ON (int) ;
 int cond_resched () ;
 struct page* get_ksm_page (struct stable_node*,int ) ;
 int hlist_del (int *) ;
 int hlist_empty (int *) ;
 int ksm_pages_shared ;
 int ksm_pages_sharing ;
 int ksm_pages_unshared ;
 TYPE_1__ ksm_scan ;
 int put_anon_vma (int ) ;
 int put_page (struct page*) ;
 int rb_erase (int *,scalar_t__) ;
 scalar_t__ root_unstable_tree ;
 int unlock_page (struct page*) ;

__attribute__((used)) static void remove_rmap_item_from_tree(struct rmap_item *rmap_item)
{
 if (rmap_item->address & STABLE_FLAG) {
  struct stable_node *stable_node;
  struct page *page;

  stable_node = rmap_item->head;
  page = get_ksm_page(stable_node, GET_KSM_PAGE_LOCK);
  if (!page)
   goto out;

  hlist_del(&rmap_item->hlist);
  unlock_page(page);
  put_page(page);

  if (!hlist_empty(&stable_node->hlist))
   ksm_pages_sharing--;
  else
   ksm_pages_shared--;
  VM_BUG_ON(stable_node->rmap_hlist_len <= 0);
  stable_node->rmap_hlist_len--;

  put_anon_vma(rmap_item->anon_vma);
  rmap_item->address &= PAGE_MASK;

 } else if (rmap_item->address & UNSTABLE_FLAG) {
  unsigned char age;







  age = (unsigned char)(ksm_scan.seqnr - rmap_item->address);
  BUG_ON(age > 1);
  if (!age)
   rb_erase(&rmap_item->node,
     root_unstable_tree + NUMA(rmap_item->nid));
  ksm_pages_unshared--;
  rmap_item->address &= PAGE_MASK;
 }
out:
 cond_resched();
}
