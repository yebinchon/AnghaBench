
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;
struct qtree_mem_dqinfo {int dqi_sb; int dqi_type; scalar_t__ dqi_free_entry; int dqi_usable_bs; } ;
struct qt_disk_dqdbheader {int dqdh_prev_free; int dqdh_next_free; } ;


 int ENOMEM ;
 int cpu_to_le32 (int ) ;
 char* getdqbuf (int ) ;
 int kfree (char*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int mark_info_dirty (int ,int ) ;
 int quota_error (int ,char*,scalar_t__) ;
 int read_blk (struct qtree_mem_dqinfo*,scalar_t__,char*) ;
 int write_blk (struct qtree_mem_dqinfo*,scalar_t__,char*) ;

__attribute__((used)) static int remove_free_dqentry(struct qtree_mem_dqinfo *info, char *buf,
          uint blk)
{
 char *tmpbuf = getdqbuf(info->dqi_usable_bs);
 struct qt_disk_dqdbheader *dh = (struct qt_disk_dqdbheader *)buf;
 uint nextblk = le32_to_cpu(dh->dqdh_next_free);
 uint prevblk = le32_to_cpu(dh->dqdh_prev_free);
 int err;

 if (!tmpbuf)
  return -ENOMEM;
 if (nextblk) {
  err = read_blk(info, nextblk, tmpbuf);
  if (err < 0)
   goto out_buf;
  ((struct qt_disk_dqdbheader *)tmpbuf)->dqdh_prev_free =
       dh->dqdh_prev_free;
  err = write_blk(info, nextblk, tmpbuf);
  if (err < 0)
   goto out_buf;
 }
 if (prevblk) {
  err = read_blk(info, prevblk, tmpbuf);
  if (err < 0)
   goto out_buf;
  ((struct qt_disk_dqdbheader *)tmpbuf)->dqdh_next_free =
       dh->dqdh_next_free;
  err = write_blk(info, prevblk, tmpbuf);
  if (err < 0)
   goto out_buf;
 } else {
  info->dqi_free_entry = nextblk;
  mark_info_dirty(info->dqi_sb, info->dqi_type);
 }
 kfree(tmpbuf);
 dh->dqdh_next_free = dh->dqdh_prev_free = cpu_to_le32(0);

 if (write_blk(info, blk, buf) < 0)
  quota_error(info->dqi_sb, "Can't write block (%u) "
       "with free entries", blk);
 return 0;
out_buf:
 kfree(tmpbuf);
 return err;
}
