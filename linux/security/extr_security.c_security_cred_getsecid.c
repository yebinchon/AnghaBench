
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cred {int dummy; } ;


 int call_void_hook (int ,struct cred const*,scalar_t__*) ;
 int cred_getsecid ;

void security_cred_getsecid(const struct cred *c, u32 *secid)
{
 *secid = 0;
 call_void_hook(cred_getsecid, c, secid);
}
