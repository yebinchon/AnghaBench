
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;


 struct user_namespace* current_user_ns () ;
 struct user_namespace init_user_ns ;
 int posix_acl_fix_xattr_userns (struct user_namespace*,struct user_namespace*,void*,size_t) ;

void posix_acl_fix_xattr_to_user(void *value, size_t size)
{
 struct user_namespace *user_ns = current_user_ns();
 if (user_ns == &init_user_ns)
  return;
 posix_acl_fix_xattr_userns(user_ns, &init_user_ns, value, size);
}
