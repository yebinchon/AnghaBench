
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int call_int_hook (int ,int ,char*,void**) ;
 int sb_eat_lsm_opts ;

int security_sb_eat_lsm_opts(char *options, void **mnt_opts)
{
 return call_int_hook(sb_eat_lsm_opts, 0, options, mnt_opts);
}
