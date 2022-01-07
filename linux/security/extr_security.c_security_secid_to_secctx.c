
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int EOPNOTSUPP ;
 int call_int_hook (int ,int ,int ,char**,int *) ;
 int secid_to_secctx ;

int security_secid_to_secctx(u32 secid, char **secdata, u32 *seclen)
{
 return call_int_hook(secid_to_secctx, -EOPNOTSUPP, secid, secdata,
    seclen);
}
