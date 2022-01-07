
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 scalar_t__ PageUnevictable (struct page*) ;
 int UNEVICTABLE_PGMUNLOCKED ;
 int UNEVICTABLE_PGSTRANDED ;
 int __count_vm_event (int ) ;

__attribute__((used)) static void __munlock_isolation_failed(struct page *page)
{
 if (PageUnevictable(page))
  __count_vm_event(UNEVICTABLE_PGSTRANDED);
 else
  __count_vm_event(UNEVICTABLE_PGMUNLOCKED);
}
