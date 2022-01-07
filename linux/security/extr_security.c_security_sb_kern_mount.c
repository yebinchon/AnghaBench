
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int call_int_hook (int ,int ,struct super_block*) ;
 int sb_kern_mount ;

int security_sb_kern_mount(struct super_block *sb)
{
 return call_int_hook(sb_kern_mount, 0, sb);
}
