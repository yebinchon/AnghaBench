
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct qtree_mem_dqinfo {int dqi_qtree_depth; int dqi_usable_bs; } ;
struct dquot {int dq_id; int dq_sb; } ;
typedef scalar_t__ loff_t ;
typedef int __le32 ;


 scalar_t__ ENOMEM ;
 scalar_t__ find_block_dqentry (struct qtree_mem_dqinfo*,struct dquot*,int ) ;
 size_t get_index (struct qtree_mem_dqinfo*,int ,int) ;
 char* getdqbuf (int ) ;
 int kfree (char*) ;
 int le32_to_cpu (int ) ;
 int quota_error (int ,char*,int ) ;
 scalar_t__ read_blk (struct qtree_mem_dqinfo*,int ,char*) ;

__attribute__((used)) static loff_t find_tree_dqentry(struct qtree_mem_dqinfo *info,
    struct dquot *dquot, uint blk, int depth)
{
 char *buf = getdqbuf(info->dqi_usable_bs);
 loff_t ret = 0;
 __le32 *ref = (__le32 *)buf;

 if (!buf)
  return -ENOMEM;
 ret = read_blk(info, blk, buf);
 if (ret < 0) {
  quota_error(dquot->dq_sb, "Can't read quota tree block %u",
       blk);
  goto out_buf;
 }
 ret = 0;
 blk = le32_to_cpu(ref[get_index(info, dquot->dq_id, depth)]);
 if (!blk)
  goto out_buf;
 if (depth < info->dqi_qtree_depth - 1)
  ret = find_tree_dqentry(info, dquot, blk, depth+1);
 else
  ret = find_block_dqentry(info, dquot, blk);
out_buf:
 kfree(buf);
 return ret;
}
