
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct vm_struct {int nr_pages; struct page** pages; } ;
struct page {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {scalar_t__ stack; } ;


 int PAGE_SIZE ;
 scalar_t__ PageHighMem (struct page*) ;
 TYPE_1__* current ;
 int err_printk (struct device*,int *,char*,void*) ;
 scalar_t__ object_is_on_stack (void*) ;
 void* page_address (struct page*) ;
 struct vm_struct* task_stack_vm_area (TYPE_1__*) ;

__attribute__((used)) static void check_for_stack(struct device *dev,
       struct page *page, size_t offset)
{
 void *addr;
 struct vm_struct *stack_vm_area = task_stack_vm_area(current);

 if (!stack_vm_area) {

  if (PageHighMem(page))
   return;
  addr = page_address(page) + offset;
  if (object_is_on_stack(addr))
   err_printk(dev, ((void*)0), "device driver maps memory from stack [addr=%p]\n", addr);
 } else {

  int i;

  for (i = 0; i < stack_vm_area->nr_pages; i++) {
   if (page != stack_vm_area->pages[i])
    continue;

   addr = (u8 *)current->stack + i * PAGE_SIZE + offset;
   err_printk(dev, ((void*)0), "device driver maps memory from stack [probable addr=%p]\n", addr);
   break;
  }
 }
}
