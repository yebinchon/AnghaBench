
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_SYS_ADMIN ;
 int CAP_SYS_RESOURCE ;
 int capable (int ) ;

__attribute__((used)) static bool is_unprivileged_user(void)
{
 return !capable(CAP_SYS_RESOURCE) && !capable(CAP_SYS_ADMIN);
}
