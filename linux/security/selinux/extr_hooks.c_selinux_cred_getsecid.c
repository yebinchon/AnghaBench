
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cred {int dummy; } ;


 int cred_sid (struct cred const*) ;

__attribute__((used)) static void selinux_cred_getsecid(const struct cred *c, u32 *secid)
{
 *secid = cred_sid(c);
}
