
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v2_disk_dqinfo {void* dqi_free_entry; void* dqi_free_blk; void* dqi_blocks; void* dqi_flags; void* dqi_igrace; void* dqi_bgrace; } ;
struct super_block {TYPE_1__* s_op; } ;
struct quota_info {int dqio_sem; struct mem_dqinfo* info; } ;
struct qtree_mem_dqinfo {int dqi_free_entry; int dqi_free_blk; int dqi_blocks; } ;
struct mem_dqinfo {int dqi_igrace; int dqi_bgrace; int dqi_flags; struct qtree_mem_dqinfo* dqi_priv; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* quota_write ) (struct super_block*,int,char*,int,int ) ;} ;


 int DQF_INFO_DIRTY ;
 int V2_DQINFOOFF ;
 void* cpu_to_le32 (int ) ;
 int down_write (int *) ;
 int dq_data_lock ;
 int quota_error (struct super_block*,char*) ;
 struct quota_info* sb_dqopt (struct super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct super_block*,int,char*,int,int ) ;
 int up_write (int *) ;

__attribute__((used)) static int v2_write_file_info(struct super_block *sb, int type)
{
 struct v2_disk_dqinfo dinfo;
 struct quota_info *dqopt = sb_dqopt(sb);
 struct mem_dqinfo *info = &dqopt->info[type];
 struct qtree_mem_dqinfo *qinfo = info->dqi_priv;
 ssize_t size;

 down_write(&dqopt->dqio_sem);
 spin_lock(&dq_data_lock);
 info->dqi_flags &= ~DQF_INFO_DIRTY;
 dinfo.dqi_bgrace = cpu_to_le32(info->dqi_bgrace);
 dinfo.dqi_igrace = cpu_to_le32(info->dqi_igrace);

 dinfo.dqi_flags = cpu_to_le32(0);
 spin_unlock(&dq_data_lock);
 dinfo.dqi_blocks = cpu_to_le32(qinfo->dqi_blocks);
 dinfo.dqi_free_blk = cpu_to_le32(qinfo->dqi_free_blk);
 dinfo.dqi_free_entry = cpu_to_le32(qinfo->dqi_free_entry);
 size = sb->s_op->quota_write(sb, type, (char *)&dinfo,
        sizeof(struct v2_disk_dqinfo), V2_DQINFOOFF);
 up_write(&dqopt->dqio_sem);
 if (size != sizeof(struct v2_disk_dqinfo)) {
  quota_error(sb, "Can't write info structure");
  return -1;
 }
 return 0;
}
