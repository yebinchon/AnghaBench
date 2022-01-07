
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int call_void_hook (int ,char*,int ) ;
 int release_secctx ;

void security_release_secctx(char *secdata, u32 seclen)
{
 call_void_hook(release_secctx, secdata, seclen);
}
