
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct cred {int dummy; } ;


 int cred_has_capability (struct cred const*,int,unsigned int,int) ;
 struct user_namespace init_user_ns ;

__attribute__((used)) static int selinux_capable(const struct cred *cred, struct user_namespace *ns,
      int cap, unsigned int opts)
{
 return cred_has_capability(cred, cap, opts, ns == &init_user_ns);
}
