
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCKDOWN_HIBERNATION ;
 scalar_t__ nohibernate ;
 int security_locked_down (int ) ;

bool hibernation_available(void)
{
 return nohibernate == 0 && !security_locked_down(LOCKDOWN_HIBERNATION);
}
