
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pagevec {int dummy; } ;


 int UNEVICTABLE_PGMUNLOCKED ;
 int UNEVICTABLE_PGRESCUED ;
 int __pagevec_lru_add (struct pagevec*) ;
 int count_vm_events (int ,int) ;
 int pagevec_count (struct pagevec*) ;

__attribute__((used)) static void __putback_lru_fast(struct pagevec *pvec, int pgrescued)
{
 count_vm_events(UNEVICTABLE_PGMUNLOCKED, pagevec_count(pvec));




 __pagevec_lru_add(pvec);
 count_vm_events(UNEVICTABLE_PGRESCUED, pgrescued);
}
