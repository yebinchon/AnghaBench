
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct qtree_mem_dqinfo {int dqi_blocksize_bits; int dqi_entry_size; int dqi_usable_bs; } ;
struct qt_disk_dqdbheader {int dqdh_entries; } ;
struct dquot {int dq_off; int dq_sb; } ;


 int ENOMEM ;
 char* getdqbuf (int ) ;
 int insert_free_dqentry (struct qtree_mem_dqinfo*,char*,int) ;
 int kfree (char*) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int memset (char*,int ,int ) ;
 int put_free_dqblk (struct qtree_mem_dqinfo*,char*,int) ;
 int qtree_dqstr_in_blk (struct qtree_mem_dqinfo*) ;
 int quota_error (int ,char*,int,...) ;
 int read_blk (struct qtree_mem_dqinfo*,int,char*) ;
 int remove_free_dqentry (struct qtree_mem_dqinfo*,char*,int) ;
 int write_blk (struct qtree_mem_dqinfo*,int,char*) ;

__attribute__((used)) static int free_dqentry(struct qtree_mem_dqinfo *info, struct dquot *dquot,
   uint blk)
{
 struct qt_disk_dqdbheader *dh;
 char *buf = getdqbuf(info->dqi_usable_bs);
 int ret = 0;

 if (!buf)
  return -ENOMEM;
 if (dquot->dq_off >> info->dqi_blocksize_bits != blk) {
  quota_error(dquot->dq_sb, "Quota structure has offset to "
   "other block (%u) than it should (%u)", blk,
   (uint)(dquot->dq_off >> info->dqi_blocksize_bits));
  goto out_buf;
 }
 ret = read_blk(info, blk, buf);
 if (ret < 0) {
  quota_error(dquot->dq_sb, "Can't read quota data block %u",
       blk);
  goto out_buf;
 }
 dh = (struct qt_disk_dqdbheader *)buf;
 le16_add_cpu(&dh->dqdh_entries, -1);
 if (!le16_to_cpu(dh->dqdh_entries)) {
  ret = remove_free_dqentry(info, buf, blk);
  if (ret >= 0)
   ret = put_free_dqblk(info, buf, blk);
  if (ret < 0) {
   quota_error(dquot->dq_sb, "Can't move quota data block "
        "(%u) to free list", blk);
   goto out_buf;
  }
 } else {
  memset(buf +
         (dquot->dq_off & ((1 << info->dqi_blocksize_bits) - 1)),
         0, info->dqi_entry_size);
  if (le16_to_cpu(dh->dqdh_entries) ==
      qtree_dqstr_in_blk(info) - 1) {

   ret = insert_free_dqentry(info, buf, blk);
   if (ret < 0) {
    quota_error(dquot->dq_sb, "Can't insert quota "
        "data block (%u) to free entry list", blk);
    goto out_buf;
   }
  } else {
   ret = write_blk(info, blk, buf);
   if (ret < 0) {
    quota_error(dquot->dq_sb, "Can't write quota "
         "data block %u", blk);
    goto out_buf;
   }
  }
 }
 dquot->dq_off = 0;
out_buf:
 kfree(buf);
 return ret;
}
