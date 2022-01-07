
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct to_kill {scalar_t__ size_shift; int nd; struct task_struct* tsk; int addr; } ;
struct task_struct {int comm; } ;
struct page {int dummy; } ;
struct list_head {int dummy; } ;


 int EFAULT ;
 int GFP_ATOMIC ;
 scalar_t__ PAGE_SHIFT ;
 int compound_head (struct page*) ;
 scalar_t__ compound_order (int ) ;
 scalar_t__ dev_pagemap_mapping_shift (struct page*,struct vm_area_struct*) ;
 int get_task_struct (struct task_struct*) ;
 scalar_t__ is_zone_device_page (struct page*) ;
 int kfree (struct to_kill*) ;
 struct to_kill* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int page_address_in_vma (struct page*,struct vm_area_struct*) ;
 int page_to_pfn (struct page*) ;
 int pr_err (char*) ;
 int pr_info (char*,int ,int ) ;

__attribute__((used)) static void add_to_kill(struct task_struct *tsk, struct page *p,
         struct vm_area_struct *vma,
         struct list_head *to_kill,
         struct to_kill **tkc)
{
 struct to_kill *tk;

 if (*tkc) {
  tk = *tkc;
  *tkc = ((void*)0);
 } else {
  tk = kmalloc(sizeof(struct to_kill), GFP_ATOMIC);
  if (!tk) {
   pr_err("Memory failure: Out of memory while machine check handling\n");
   return;
  }
 }
 tk->addr = page_address_in_vma(p, vma);
 if (is_zone_device_page(p))
  tk->size_shift = dev_pagemap_mapping_shift(p, vma);
 else
  tk->size_shift = compound_order(compound_head(p)) + PAGE_SHIFT;
 if (tk->addr == -EFAULT) {
  pr_info("Memory failure: Unable to find user space address %lx in %s\n",
   page_to_pfn(p), tsk->comm);
 } else if (tk->size_shift == 0) {
  kfree(tk);
  return;
 }
 get_task_struct(tsk);
 tk->tsk = tsk;
 list_add_tail(&tk->nd, to_kill);
}
