
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;


 int current_user_ns () ;
 int in_userns (struct user_namespace const*,int ) ;

bool current_in_userns(const struct user_namespace *target_ns)
{
 return in_userns(target_ns, current_user_ns());
}
