
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int call_int_hook (int ,int ,struct super_block*,void*) ;
 int sb_remount ;

int security_sb_remount(struct super_block *sb,
   void *mnt_opts)
{
 return call_int_hook(sb_remount, 0, sb, mnt_opts);
}
