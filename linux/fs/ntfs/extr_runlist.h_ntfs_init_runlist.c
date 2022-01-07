
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int * rl; } ;
typedef TYPE_1__ runlist ;


 int init_rwsem (int *) ;

__attribute__((used)) static inline void ntfs_init_runlist(runlist *rl)
{
 rl->rl = ((void*)0);
 init_rwsem(&rl->lock);
}
