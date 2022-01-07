
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int owner; int lock; } ;


 TYPE_1__ audit_cmd_mutex ;
 int current ;
 int mutex_lock (int *) ;

void audit_ctl_lock(void)
{
 mutex_lock(&audit_cmd_mutex.lock);
 audit_cmd_mutex.owner = current;
}
