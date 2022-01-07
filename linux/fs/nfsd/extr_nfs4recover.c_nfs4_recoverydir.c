
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* user_recovery_dirname ;

char *
nfs4_recoverydir(void)
{
 return user_recovery_dirname;
}
