
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct posix_acl {int * a_entries; } ;


 scalar_t__ pace_gt (int *,int *) ;
 int swap (int ,int ) ;

__attribute__((used)) static void
sort_pacl_range(struct posix_acl *pacl, int start, int end) {
 int sorted = 0, i;



 while (!sorted) {
  sorted = 1;
  for (i = start; i < end; i++) {
   if (pace_gt(&pacl->a_entries[i],
        &pacl->a_entries[i+1])) {
    sorted = 0;
    swap(pacl->a_entries[i],
         pacl->a_entries[i + 1]);
   }
  }
 }
}
