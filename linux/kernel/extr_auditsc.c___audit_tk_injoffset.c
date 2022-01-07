
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec64 {int tv_nsec; scalar_t__ tv_sec; } ;


 int AUDIT_TIME_INJOFFSET ;
 int GFP_KERNEL ;
 int audit_context () ;
 int audit_log (int ,int ,int ,char*,long long,int ) ;

void __audit_tk_injoffset(struct timespec64 offset)
{
 audit_log(audit_context(), GFP_KERNEL, AUDIT_TIME_INJOFFSET,
    "sec=%lli nsec=%li",
    (long long)offset.tv_sec, offset.tv_nsec);
}
