
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_namespace {int dummy; } ;
struct file {int f_cred; } ;


 int CAP_OPT_NONE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int cap_valid (int) ;
 scalar_t__ security_capable (int ,struct user_namespace*,int,int ) ;

bool file_ns_capable(const struct file *file, struct user_namespace *ns,
       int cap)
{

 if (WARN_ON_ONCE(!cap_valid(cap)))
  return 0;

 if (security_capable(file->f_cred, ns, cap, CAP_OPT_NONE) == 0)
  return 1;

 return 0;
}
