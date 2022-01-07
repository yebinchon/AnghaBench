
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int mmap_sem; int exe_file; } ;


 int RCU_INIT_POINTER (int ,int ) ;
 int down_write (int *) ;
 int get_mm_exe_file (struct mm_struct*) ;
 int up_write (int *) ;

__attribute__((used)) static int dup_mmap(struct mm_struct *mm, struct mm_struct *oldmm)
{
 down_write(&oldmm->mmap_sem);
 RCU_INIT_POINTER(mm->exe_file, get_mm_exe_file(oldmm));
 up_write(&oldmm->mmap_sem);
 return 0;
}
