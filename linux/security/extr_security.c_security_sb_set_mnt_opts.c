
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int EOPNOTSUPP ;
 int call_int_hook (int ,int ,struct super_block*,void*,unsigned long,unsigned long*) ;
 int sb_set_mnt_opts ;

int security_sb_set_mnt_opts(struct super_block *sb,
    void *mnt_opts,
    unsigned long kern_flags,
    unsigned long *set_kern_flags)
{
 return call_int_hook(sb_set_mnt_opts,
    mnt_opts ? -EOPNOTSUPP : 0, sb,
    mnt_opts, kern_flags, set_kern_flags);
}
