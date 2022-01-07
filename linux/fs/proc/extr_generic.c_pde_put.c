
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int low_ino; int refcnt; } ;


 int pde_free (struct proc_dir_entry*) ;
 int proc_free_inum (int ) ;
 scalar_t__ refcount_dec_and_test (int *) ;

void pde_put(struct proc_dir_entry *pde)
{
 if (refcount_dec_and_test(&pde->refcnt)) {
  proc_free_inum(pde->low_ino);
  pde_free(pde);
 }
}
