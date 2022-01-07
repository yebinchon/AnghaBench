
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int call_int_hook (int ,int ,struct super_block const*,struct super_block*,unsigned long,unsigned long*) ;
 int sb_clone_mnt_opts ;

int security_sb_clone_mnt_opts(const struct super_block *oldsb,
    struct super_block *newsb,
    unsigned long kern_flags,
    unsigned long *set_kern_flags)
{
 return call_int_hook(sb_clone_mnt_opts, 0, oldsb, newsb,
    kern_flags, set_kern_flags);
}
