
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct qtree_mem_dqinfo {int dqi_usable_bs; int dqi_qtree_depth; } ;
struct dquot {int dq_sb; int dq_id; } ;
typedef int __le32 ;


 int ENOMEM ;
 int QT_TREEOFF ;
 int cpu_to_le32 (int ) ;
 int free_dqentry (struct qtree_mem_dqinfo*,struct dquot*,int ) ;
 size_t get_index (struct qtree_mem_dqinfo*,int ,int) ;
 char* getdqbuf (int) ;
 int kfree (char*) ;
 int le32_to_cpu (int ) ;
 int put_free_dqblk (struct qtree_mem_dqinfo*,char*,int ) ;
 int quota_error (int ,char*,int ) ;
 int read_blk (struct qtree_mem_dqinfo*,int ,char*) ;
 int write_blk (struct qtree_mem_dqinfo*,int ,char*) ;

__attribute__((used)) static int remove_tree(struct qtree_mem_dqinfo *info, struct dquot *dquot,
         uint *blk, int depth)
{
 char *buf = getdqbuf(info->dqi_usable_bs);
 int ret = 0;
 uint newblk;
 __le32 *ref = (__le32 *)buf;

 if (!buf)
  return -ENOMEM;
 ret = read_blk(info, *blk, buf);
 if (ret < 0) {
  quota_error(dquot->dq_sb, "Can't read quota data block %u",
       *blk);
  goto out_buf;
 }
 newblk = le32_to_cpu(ref[get_index(info, dquot->dq_id, depth)]);
 if (depth == info->dqi_qtree_depth - 1) {
  ret = free_dqentry(info, dquot, newblk);
  newblk = 0;
 } else {
  ret = remove_tree(info, dquot, &newblk, depth+1);
 }
 if (ret >= 0 && !newblk) {
  int i;
  ref[get_index(info, dquot->dq_id, depth)] = cpu_to_le32(0);

  for (i = 0; i < (info->dqi_usable_bs >> 2) && !ref[i]; i++)
   ;

  if (i == (info->dqi_usable_bs >> 2)
      && *blk != QT_TREEOFF) {
   put_free_dqblk(info, buf, *blk);
   *blk = 0;
  } else {
   ret = write_blk(info, *blk, buf);
   if (ret < 0)
    quota_error(dquot->dq_sb,
         "Can't write quota tree block %u",
         *blk);
  }
 }
out_buf:
 kfree(buf);
 return ret;
}
