
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum lockdown_reason { ____Placeholder_lockdown_reason } lockdown_reason ;


 int call_int_hook (int ,int ,int) ;
 int locked_down ;

int security_locked_down(enum lockdown_reason what)
{
 return call_int_hook(locked_down, 0, what);
}
