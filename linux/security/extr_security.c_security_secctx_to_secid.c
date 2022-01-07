
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int call_int_hook (int ,int ,char const*,scalar_t__,scalar_t__*) ;
 int secctx_to_secid ;

int security_secctx_to_secid(const char *secdata, u32 seclen, u32 *secid)
{
 *secid = 0;
 return call_int_hook(secctx_to_secid, 0, secdata, seclen, secid);
}
