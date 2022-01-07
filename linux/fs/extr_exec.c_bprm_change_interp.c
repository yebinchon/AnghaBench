
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linux_binprm {scalar_t__ interp; scalar_t__ filename; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (scalar_t__) ;
 scalar_t__ kstrdup (char const*,int ) ;

int bprm_change_interp(const char *interp, struct linux_binprm *bprm)
{

 if (bprm->interp != bprm->filename)
  kfree(bprm->interp);
 bprm->interp = kstrdup(interp, GFP_KERNEL);
 if (!bprm->interp)
  return -ENOMEM;
 return 0;
}
