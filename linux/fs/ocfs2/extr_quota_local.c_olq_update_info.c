
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_mem_dqinfo {int dqi_blocks; int dqi_chunks; int dqi_flags; } ;
struct ocfs2_local_disk_dqinfo {void* dqi_blocks; void* dqi_chunks; void* dqi_flags; } ;
struct mem_dqinfo {struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct buffer_head {scalar_t__ b_data; } ;


 scalar_t__ OCFS2_LOCAL_INFO_OFF ;
 void* cpu_to_le32 (int ) ;
 int dq_data_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void olq_update_info(struct buffer_head *bh, void *private)
{
 struct mem_dqinfo *info = private;
 struct ocfs2_mem_dqinfo *oinfo = info->dqi_priv;
 struct ocfs2_local_disk_dqinfo *ldinfo;

 ldinfo = (struct ocfs2_local_disk_dqinfo *)(bh->b_data +
      OCFS2_LOCAL_INFO_OFF);
 spin_lock(&dq_data_lock);
 ldinfo->dqi_flags = cpu_to_le32(oinfo->dqi_flags);
 ldinfo->dqi_chunks = cpu_to_le32(oinfo->dqi_chunks);
 ldinfo->dqi_blocks = cpu_to_le32(oinfo->dqi_blocks);
 spin_unlock(&dq_data_lock);
}
