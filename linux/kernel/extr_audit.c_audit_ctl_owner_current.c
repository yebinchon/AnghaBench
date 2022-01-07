
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ owner; } ;


 TYPE_1__ audit_cmd_mutex ;
 scalar_t__ current ;

__attribute__((used)) static bool audit_ctl_owner_current(void)
{
 return (current == audit_cmd_mutex.owner);
}
