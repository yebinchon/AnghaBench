
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vm_area_struct {TYPE_4__* vm_file; TYPE_1__* vm_ops; int anon_vma; int vm_flags; int vm_mm; } ;
struct page {int dummy; } ;
struct address_space {TYPE_3__* a_ops; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgoff_t ;
typedef int pgd_t ;
typedef int p4d_t ;
struct TYPE_10__ {int comm; } ;
struct TYPE_9__ {TYPE_2__* f_op; struct address_space* f_mapping; } ;
struct TYPE_8__ {int * readpage; } ;
struct TYPE_7__ {int * mmap; } ;
struct TYPE_6__ {int * fault; } ;


 int HZ ;
 int LOCKDEP_NOW_UNRELIABLE ;
 int TAINT_BAD_PAGE ;
 int add_taint (int ,int ) ;
 TYPE_5__* current ;
 int dump_page (struct page*,char*) ;
 int dump_stack () ;
 int jiffies ;
 int linear_page_index (struct vm_area_struct*,unsigned long) ;
 int * p4d_offset (int *,unsigned long) ;
 int * pgd_offset (int ,unsigned long) ;
 int * pmd_offset (int *,unsigned long) ;
 scalar_t__ pmd_val (int ) ;
 int pr_alert (char*,...) ;
 scalar_t__ pte_val (int ) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static void print_bad_pte(struct vm_area_struct *vma, unsigned long addr,
     pte_t pte, struct page *page)
{
 pgd_t *pgd = pgd_offset(vma->vm_mm, addr);
 p4d_t *p4d = p4d_offset(pgd, addr);
 pud_t *pud = pud_offset(p4d, addr);
 pmd_t *pmd = pmd_offset(pud, addr);
 struct address_space *mapping;
 pgoff_t index;
 static unsigned long resume;
 static unsigned long nr_shown;
 static unsigned long nr_unshown;





 if (nr_shown == 60) {
  if (time_before(jiffies, resume)) {
   nr_unshown++;
   return;
  }
  if (nr_unshown) {
   pr_alert("BUG: Bad page map: %lu messages suppressed\n",
     nr_unshown);
   nr_unshown = 0;
  }
  nr_shown = 0;
 }
 if (nr_shown++ == 0)
  resume = jiffies + 60 * HZ;

 mapping = vma->vm_file ? vma->vm_file->f_mapping : ((void*)0);
 index = linear_page_index(vma, addr);

 pr_alert("BUG: Bad page map in process %s  pte:%08llx pmd:%08llx\n",
   current->comm,
   (long long)pte_val(pte), (long long)pmd_val(*pmd));
 if (page)
  dump_page(page, "bad pte");
 pr_alert("addr:%px vm_flags:%08lx anon_vma:%px mapping:%px index:%lx\n",
   (void *)addr, vma->vm_flags, vma->anon_vma, mapping, index);
 pr_alert("file:%pD fault:%ps mmap:%ps readpage:%ps\n",
   vma->vm_file,
   vma->vm_ops ? vma->vm_ops->fault : ((void*)0),
   vma->vm_file ? vma->vm_file->f_op->mmap : ((void*)0),
   mapping ? mapping->a_ops->readpage : ((void*)0));
 dump_stack();
 add_taint(TAINT_BAD_PAGE, LOCKDEP_NOW_UNRELIABLE);
}
