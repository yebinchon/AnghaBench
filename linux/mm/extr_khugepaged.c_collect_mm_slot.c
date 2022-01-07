
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;
struct mm_slot {int mm_node; int hash; struct mm_struct* mm; } ;


 int free_mm_slot (struct mm_slot*) ;
 int hash_del (int *) ;
 int khugepaged_mm_lock ;
 scalar_t__ khugepaged_test_exit (struct mm_struct*) ;
 int list_del (int *) ;
 int lockdep_assert_held (int *) ;
 int mmdrop (struct mm_struct*) ;

__attribute__((used)) static void collect_mm_slot(struct mm_slot *mm_slot)
{
 struct mm_struct *mm = mm_slot->mm;

 lockdep_assert_held(&khugepaged_mm_lock);

 if (khugepaged_test_exit(mm)) {

  hash_del(&mm_slot->hash);
  list_del(&mm_slot->mm_node);
  free_mm_slot(mm_slot);
  mmdrop(mm);
 }
}
