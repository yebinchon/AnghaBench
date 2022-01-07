
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ocfs2_mem_dqinfo {struct buffer_head* dqi_libh; } ;
struct mem_dqinfo {scalar_t__ dqi_priv; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int * files; } ;


 int mlog_errno (int) ;
 int ocfs2_modify_bh (int ,struct buffer_head*,int ,struct mem_dqinfo*) ;
 int olq_update_info ;
 struct mem_dqinfo* sb_dqinfo (struct super_block*,int) ;
 TYPE_1__* sb_dqopt (struct super_block*) ;

__attribute__((used)) static int ocfs2_local_write_info(struct super_block *sb, int type)
{
 struct mem_dqinfo *info = sb_dqinfo(sb, type);
 struct buffer_head *bh = ((struct ocfs2_mem_dqinfo *)info->dqi_priv)
      ->dqi_libh;
 int status;

 status = ocfs2_modify_bh(sb_dqopt(sb)->files[type], bh, olq_update_info,
     info);
 if (status < 0) {
  mlog_errno(status);
  return -1;
 }

 return 0;
}
