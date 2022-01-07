
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auxtrace_mmap {int * base; int len; } ;


 int munmap (int *,int ) ;

void auxtrace_mmap__munmap(struct auxtrace_mmap *mm)
{
 if (mm->base) {
  munmap(mm->base, mm->len);
  mm->base = ((void*)0);
 }
}
