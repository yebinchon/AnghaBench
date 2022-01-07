
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_info {int dummy; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int UMH_NO_WAIT ;
 int call_usermodehelper_exec (struct subprocess_info*,int) ;
 struct subprocess_info* call_usermodehelper_setup (char const*,char**,char**,int ,int *,int *,int *) ;

int call_usermodehelper(const char *path, char **argv, char **envp, int wait)
{
 struct subprocess_info *info;
 gfp_t gfp_mask = (wait == UMH_NO_WAIT) ? GFP_ATOMIC : GFP_KERNEL;

 info = call_usermodehelper_setup(path, argv, envp, gfp_mask,
      ((void*)0), ((void*)0), ((void*)0));
 if (info == ((void*)0))
  return -ENOMEM;

 return call_usermodehelper_exec(info, wait);
}
