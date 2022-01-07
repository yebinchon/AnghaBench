
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int RMAP_COMPOUND ;
 int do_page_add_anon_rmap (struct page*,struct vm_area_struct*,unsigned long,int ) ;

void page_add_anon_rmap(struct page *page,
 struct vm_area_struct *vma, unsigned long address, bool compound)
{
 do_page_add_anon_rmap(page, vma, address, compound ? RMAP_COMPOUND : 0);
}
