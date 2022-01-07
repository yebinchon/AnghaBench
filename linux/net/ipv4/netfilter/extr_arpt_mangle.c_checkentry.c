
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct arpt_mangle* targinfo; } ;
struct arpt_mangle {int flags; scalar_t__ target; } ;


 int ARPT_MANGLE_MASK ;
 int EINVAL ;
 scalar_t__ NF_ACCEPT ;
 scalar_t__ NF_DROP ;
 scalar_t__ XT_CONTINUE ;

__attribute__((used)) static int checkentry(const struct xt_tgchk_param *par)
{
 const struct arpt_mangle *mangle = par->targinfo;

 if (mangle->flags & ~ARPT_MANGLE_MASK ||
     !(mangle->flags & ARPT_MANGLE_MASK))
  return -EINVAL;

 if (mangle->target != NF_DROP && mangle->target != NF_ACCEPT &&
    mangle->target != XT_CONTINUE)
  return -EINVAL;
 return 0;
}
