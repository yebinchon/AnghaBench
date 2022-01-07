
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jump_entry {int dummy; } ;


 int CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE ;
 scalar_t__ IS_ENABLED (int ) ;
 int jump_label_cmp ;
 void* jump_label_swap ;
 int sort (struct jump_entry*,unsigned long,int,int ,void*) ;

__attribute__((used)) static void
jump_label_sort_entries(struct jump_entry *start, struct jump_entry *stop)
{
 unsigned long size;
 void *swapfn = ((void*)0);

 if (IS_ENABLED(CONFIG_HAVE_ARCH_JUMP_LABEL_RELATIVE))
  swapfn = jump_label_swap;

 size = (((unsigned long)stop - (unsigned long)start)
     / sizeof(struct jump_entry));
 sort(start, size, sizeof(struct jump_entry), jump_label_cmp, swapfn);
}
