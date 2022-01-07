
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;


 int CAP_SETGID ;
 struct user_namespace* current_user_ns () ;
 scalar_t__ ns_capable (struct user_namespace*,int ) ;
 scalar_t__ userns_may_setgroups (struct user_namespace*) ;

bool may_setgroups(void)
{
 struct user_namespace *user_ns = current_user_ns();

 return ns_capable(user_ns, CAP_SETGID) &&
  userns_may_setgroups(user_ns);
}
