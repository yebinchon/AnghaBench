
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int kill_litter_super (struct super_block*) ;
 int selinux_fs_info_free (struct super_block*) ;

__attribute__((used)) static void sel_kill_sb(struct super_block *sb)
{
 selinux_fs_info_free(sb);
 kill_litter_super(sb);
}
