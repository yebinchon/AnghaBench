
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uprobe_opcode_t ;
struct TYPE_3__ {char* name; int ** pages; int * fault; } ;
struct xol_area {unsigned long vaddr; struct xol_area* bitmap; int ** pages; int slot_count; int wq; TYPE_1__ xol_mapping; } ;
struct mm_struct {int dummy; } ;
struct TYPE_4__ {struct mm_struct* mm; } ;


 int BITS_TO_LONGS (int ) ;
 int GFP_HIGHUSER ;
 int GFP_KERNEL ;
 int UINSNS_PER_PAGE ;
 int UPROBE_SWBP_INSN ;
 int UPROBE_SWBP_INSN_SIZE ;
 int __free_page (int *) ;
 int * alloc_page (int ) ;
 int arch_uprobe_copy_ixol (int *,int ,int *,int ) ;
 int atomic_set (int *,int) ;
 TYPE_2__* current ;
 int init_waitqueue_head (int *) ;
 struct xol_area* kcalloc (int ,int,int ) ;
 int kfree (struct xol_area*) ;
 struct xol_area* kmalloc (int,int ) ;
 int set_bit (int ,struct xol_area*) ;
 scalar_t__ unlikely (int) ;
 int xol_add_vma (struct mm_struct*,struct xol_area*) ;

__attribute__((used)) static struct xol_area *__create_xol_area(unsigned long vaddr)
{
 struct mm_struct *mm = current->mm;
 uprobe_opcode_t insn = UPROBE_SWBP_INSN;
 struct xol_area *area;

 area = kmalloc(sizeof(*area), GFP_KERNEL);
 if (unlikely(!area))
  goto out;

 area->bitmap = kcalloc(BITS_TO_LONGS(UINSNS_PER_PAGE), sizeof(long),
          GFP_KERNEL);
 if (!area->bitmap)
  goto free_area;

 area->xol_mapping.name = "[uprobes]";
 area->xol_mapping.fault = ((void*)0);
 area->xol_mapping.pages = area->pages;
 area->pages[0] = alloc_page(GFP_HIGHUSER);
 if (!area->pages[0])
  goto free_bitmap;
 area->pages[1] = ((void*)0);

 area->vaddr = vaddr;
 init_waitqueue_head(&area->wq);

 set_bit(0, area->bitmap);
 atomic_set(&area->slot_count, 1);
 arch_uprobe_copy_ixol(area->pages[0], 0, &insn, UPROBE_SWBP_INSN_SIZE);

 if (!xol_add_vma(mm, area))
  return area;

 __free_page(area->pages[0]);
 free_bitmap:
 kfree(area->bitmap);
 free_area:
 kfree(area);
 out:
 return ((void*)0);
}
