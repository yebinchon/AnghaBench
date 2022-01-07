
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int selinux_set_mnt_opts (struct super_block*,int *,int ,int *) ;

__attribute__((used)) static void delayed_superblock_init(struct super_block *sb, void *unused)
{
 selinux_set_mnt_opts(sb, ((void*)0), 0, ((void*)0));
}
