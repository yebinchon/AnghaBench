
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int call_int_hook (int ,int ,char const*,char const*,int,void**) ;
 int sb_add_mnt_opt ;

int security_add_mnt_opt(const char *option, const char *val, int len,
    void **mnt_opts)
{
 return call_int_hook(sb_add_mnt_opt, -EINVAL,
     option, val, len, mnt_opts);
}
