
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmpin {TYPE_1__* user; int num_pg; } ;
struct TYPE_2__ {int locked_vm; } ;


 int atomic_long_sub (int ,int *) ;
 int free_uid (TYPE_1__*) ;

void mm_unaccount_pinned_pages(struct mmpin *mmp)
{
 if (mmp->user) {
  atomic_long_sub(mmp->num_pg, &mmp->user->locked_vm);
  free_uid(mmp->user);
 }
}
