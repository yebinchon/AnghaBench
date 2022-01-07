
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct qtree_mem_dqinfo {int dqi_free_entry; int dqi_entry_size; int dqi_blocksize_bits; int dqi_usable_bs; } ;
struct qt_disk_dqdbheader {int dqdh_entries; } ;
struct TYPE_2__ {int type; } ;
struct dquot {int dq_off; int dq_sb; TYPE_1__ dq_id; } ;


 int EIO ;
 int ENOMEM ;
 int get_free_dqblk (struct qtree_mem_dqinfo*) ;
 char* getdqbuf (int ) ;
 int kfree (char*) ;
 int le16_add_cpu (int *,int) ;
 scalar_t__ le16_to_cpu (int ) ;
 int mark_info_dirty (int ,int ) ;
 int memset (char*,int ,int ) ;
 int qtree_dqstr_in_blk (struct qtree_mem_dqinfo*) ;
 scalar_t__ qtree_entry_unused (struct qtree_mem_dqinfo*,char*) ;
 int quota_error (int ,char*,...) ;
 int read_blk (struct qtree_mem_dqinfo*,int,char*) ;
 int remove_free_dqentry (struct qtree_mem_dqinfo*,char*,int) ;
 int write_blk (struct qtree_mem_dqinfo*,int,char*) ;

__attribute__((used)) static uint find_free_dqentry(struct qtree_mem_dqinfo *info,
         struct dquot *dquot, int *err)
{
 uint blk, i;
 struct qt_disk_dqdbheader *dh;
 char *buf = getdqbuf(info->dqi_usable_bs);
 char *ddquot;

 *err = 0;
 if (!buf) {
  *err = -ENOMEM;
  return 0;
 }
 dh = (struct qt_disk_dqdbheader *)buf;
 if (info->dqi_free_entry) {
  blk = info->dqi_free_entry;
  *err = read_blk(info, blk, buf);
  if (*err < 0)
   goto out_buf;
 } else {
  blk = get_free_dqblk(info);
  if ((int)blk < 0) {
   *err = blk;
   kfree(buf);
   return 0;
  }
  memset(buf, 0, info->dqi_usable_bs);


  info->dqi_free_entry = blk;
  mark_info_dirty(dquot->dq_sb, dquot->dq_id.type);
 }

 if (le16_to_cpu(dh->dqdh_entries) + 1 >= qtree_dqstr_in_blk(info)) {
  *err = remove_free_dqentry(info, buf, blk);
  if (*err < 0) {
   quota_error(dquot->dq_sb, "Can't remove block (%u) "
        "from entry free list", blk);
   goto out_buf;
  }
 }
 le16_add_cpu(&dh->dqdh_entries, 1);

 ddquot = buf + sizeof(struct qt_disk_dqdbheader);
 for (i = 0; i < qtree_dqstr_in_blk(info); i++) {
  if (qtree_entry_unused(info, ddquot))
   break;
  ddquot += info->dqi_entry_size;
 }







 *err = write_blk(info, blk, buf);
 if (*err < 0) {
  quota_error(dquot->dq_sb, "Can't write quota data block %u",
       blk);
  goto out_buf;
 }
 dquot->dq_off = (blk << info->dqi_blocksize_bits) +
   sizeof(struct qt_disk_dqdbheader) +
   i * info->dqi_entry_size;
 kfree(buf);
 return blk;
out_buf:
 kfree(buf);
 return 0;
}
