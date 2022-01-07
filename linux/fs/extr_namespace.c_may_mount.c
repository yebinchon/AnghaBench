
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* nsproxy; } ;
struct TYPE_5__ {TYPE_1__* mnt_ns; } ;
struct TYPE_4__ {int user_ns; } ;


 int CAP_SYS_ADMIN ;
 TYPE_3__* current ;
 int ns_capable (int ,int ) ;

__attribute__((used)) static inline bool may_mount(void)
{
 return ns_capable(current->nsproxy->mnt_ns->user_ns, CAP_SYS_ADMIN);
}
