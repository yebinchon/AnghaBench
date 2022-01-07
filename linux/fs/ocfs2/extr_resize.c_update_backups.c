
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_dinode {int i_blkno; } ;
struct inode {TYPE_1__* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {int s_blocksize; } ;


 int OCFS2_MAX_BACKUP_SUPERBLOCKS ;
 struct ocfs2_super* OCFS2_SB (TYPE_1__*) ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le64 (int ) ;
 int memcpy (scalar_t__,char*,int ) ;
 int mlog_errno (int) ;
 int ocfs2_backup_super_blkno (TYPE_1__*,int) ;
 scalar_t__ ocfs2_blocks_to_clusters (TYPE_1__*,int ) ;
 int ocfs2_read_blocks_sync (struct ocfs2_super*,int ,int,struct buffer_head**) ;
 int ocfs2_write_super_or_backup (struct ocfs2_super*,struct buffer_head*) ;

__attribute__((used)) static int update_backups(struct inode * inode, u32 clusters, char *data)
{
 int i, ret = 0;
 u32 cluster;
 u64 blkno;
 struct buffer_head *backup = ((void*)0);
 struct ocfs2_dinode *backup_di = ((void*)0);
 struct ocfs2_super *osb = OCFS2_SB(inode->i_sb);


 for (i = 0; i < OCFS2_MAX_BACKUP_SUPERBLOCKS; i++) {
  blkno = ocfs2_backup_super_blkno(inode->i_sb, i);
  cluster = ocfs2_blocks_to_clusters(inode->i_sb, blkno);
  if (cluster >= clusters)
   break;

  ret = ocfs2_read_blocks_sync(osb, blkno, 1, &backup);
  if (ret < 0) {
   mlog_errno(ret);
   break;
  }

  memcpy(backup->b_data, data, inode->i_sb->s_blocksize);

  backup_di = (struct ocfs2_dinode *)backup->b_data;
  backup_di->i_blkno = cpu_to_le64(blkno);

  ret = ocfs2_write_super_or_backup(osb, backup);
  brelse(backup);
  backup = ((void*)0);
  if (ret < 0) {
   mlog_errno(ret);
   break;
  }
 }

 return ret;
}
