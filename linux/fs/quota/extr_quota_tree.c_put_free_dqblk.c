
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct qtree_mem_dqinfo {int dqi_type; int dqi_sb; int dqi_free_blk; } ;
struct qt_disk_dqdbheader {int dqdh_entries; void* dqdh_prev_free; void* dqdh_next_free; } ;


 int cpu_to_le16 (int ) ;
 void* cpu_to_le32 (int ) ;
 int mark_info_dirty (int ,int ) ;
 int write_blk (struct qtree_mem_dqinfo*,int ,char*) ;

__attribute__((used)) static int put_free_dqblk(struct qtree_mem_dqinfo *info, char *buf, uint blk)
{
 struct qt_disk_dqdbheader *dh = (struct qt_disk_dqdbheader *)buf;
 int err;

 dh->dqdh_next_free = cpu_to_le32(info->dqi_free_blk);
 dh->dqdh_prev_free = cpu_to_le32(0);
 dh->dqdh_entries = cpu_to_le16(0);
 err = write_blk(info, blk, buf);
 if (err < 0)
  return err;
 info->dqi_free_blk = blk;
 mark_info_dirty(info->dqi_sb, info->dqi_type);
 return 0;
}
