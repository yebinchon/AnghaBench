
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ si_exp; } ;
union nfsd4_op_u {TYPE_1__ secinfo; } ;


 int exp_put (scalar_t__) ;

__attribute__((used)) static void
nfsd4_secinfo_release(union nfsd4_op_u *u)
{
 if (u->secinfo.si_exp)
  exp_put(u->secinfo.si_exp);
}
