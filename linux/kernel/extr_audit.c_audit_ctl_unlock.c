
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int * owner; } ;


 TYPE_1__ audit_cmd_mutex ;
 int mutex_unlock (int *) ;

void audit_ctl_unlock(void)
{
 audit_cmd_mutex.owner = ((void*)0);
 mutex_unlock(&audit_cmd_mutex.lock);
}
