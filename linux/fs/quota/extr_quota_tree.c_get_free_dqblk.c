
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qtree_mem_dqinfo {int dqi_free_blk; int dqi_type; int dqi_sb; int dqi_blocks; int dqi_usable_bs; } ;
struct qt_disk_dqdbheader {int dqdh_next_free; } ;


 int ENOMEM ;
 char* getdqbuf (int ) ;
 int kfree (char*) ;
 int le32_to_cpu (int ) ;
 int mark_info_dirty (int ,int ) ;
 int memset (char*,int ,int ) ;
 int read_blk (struct qtree_mem_dqinfo*,int,char*) ;
 int write_blk (struct qtree_mem_dqinfo*,int ,char*) ;

__attribute__((used)) static int get_free_dqblk(struct qtree_mem_dqinfo *info)
{
 char *buf = getdqbuf(info->dqi_usable_bs);
 struct qt_disk_dqdbheader *dh = (struct qt_disk_dqdbheader *)buf;
 int ret, blk;

 if (!buf)
  return -ENOMEM;
 if (info->dqi_free_blk) {
  blk = info->dqi_free_blk;
  ret = read_blk(info, blk, buf);
  if (ret < 0)
   goto out_buf;
  info->dqi_free_blk = le32_to_cpu(dh->dqdh_next_free);
 }
 else {
  memset(buf, 0, info->dqi_usable_bs);

  ret = write_blk(info, info->dqi_blocks, buf);
  if (ret < 0)
   goto out_buf;
  blk = info->dqi_blocks++;
 }
 mark_info_dirty(info->dqi_sb, info->dqi_type);
 ret = blk;
out_buf:
 kfree(buf);
 return ret;
}
