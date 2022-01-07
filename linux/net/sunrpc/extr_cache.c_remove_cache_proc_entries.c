
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_detail {int * procfs; } ;


 int proc_remove (int *) ;

__attribute__((used)) static void remove_cache_proc_entries(struct cache_detail *cd)
{
 if (cd->procfs) {
  proc_remove(cd->procfs);
  cd->procfs = ((void*)0);
 }
}
