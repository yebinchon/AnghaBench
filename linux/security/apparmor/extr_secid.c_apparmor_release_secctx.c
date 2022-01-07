
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int kfree (char*) ;

void apparmor_release_secctx(char *secdata, u32 seclen)
{
 kfree(secdata);
}
