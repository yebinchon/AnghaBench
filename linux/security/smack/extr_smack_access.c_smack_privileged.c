
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int PF_KTHREAD ;
 TYPE_1__* current ;
 int current_cred () ;
 int smack_privileged_cred (int,int ) ;
 scalar_t__ unlikely (int) ;

bool smack_privileged(int cap)
{



 if (unlikely(current->flags & PF_KTHREAD))
  return 1;

 return smack_privileged_cred(cap, current_cred());
}
