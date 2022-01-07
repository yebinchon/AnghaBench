
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct qnx4_sb_info {int Version; } ;


 int QNX4_VERSION ;
 int SB_RDONLY ;
 struct qnx4_sb_info* qnx4_sb (struct super_block*) ;
 int sync_filesystem (struct super_block*) ;

__attribute__((used)) static int qnx4_remount(struct super_block *sb, int *flags, char *data)
{
 struct qnx4_sb_info *qs;

 sync_filesystem(sb);
 qs = qnx4_sb(sb);
 qs->Version = QNX4_VERSION;
 *flags |= SB_RDONLY;
 return 0;
}
