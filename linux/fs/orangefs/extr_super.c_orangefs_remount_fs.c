
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int GOSSIP_SUPER_DEBUG ;
 int gossip_debug (int ,char*) ;
 int parse_mount_options (struct super_block*,char*,int) ;

__attribute__((used)) static int orangefs_remount_fs(struct super_block *sb, int *flags, char *data)
{
 gossip_debug(GOSSIP_SUPER_DEBUG, "orangefs_remount_fs: called\n");
 return parse_mount_options(sb, data, 1);
}
