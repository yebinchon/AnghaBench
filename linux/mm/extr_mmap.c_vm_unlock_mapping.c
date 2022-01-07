
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct address_space {int flags; } ;


 int AS_MM_ALL_LOCKS ;
 int BUG () ;
 int i_mmap_unlock_write (struct address_space*) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void vm_unlock_mapping(struct address_space *mapping)
{
 if (test_bit(AS_MM_ALL_LOCKS, &mapping->flags)) {




  i_mmap_unlock_write(mapping);
  if (!test_and_clear_bit(AS_MM_ALL_LOCKS,
     &mapping->flags))
   BUG();
 }
}
