
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int user_ns; } ;


 int CAP_OPT_NONE ;
 int CAP_SETPCAP ;
 scalar_t__ cap_capable (TYPE_1__*,int ,int ,int ) ;
 TYPE_1__* current_cred () ;

__attribute__((used)) static inline int cap_inh_is_capped(void)
{



 if (cap_capable(current_cred(), current_cred()->user_ns,
   CAP_SETPCAP, CAP_OPT_NONE) == 0)
  return 0;
 return 1;
}
