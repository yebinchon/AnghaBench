
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct gfs2_leaf {int lf_depth; } ;
struct gfs2_inode {scalar_t__ i_depth; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int __be64 ;


 size_t BIT (scalar_t__) ;
 int EIO ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int get_leaf (struct gfs2_inode*,scalar_t__,struct buffer_head**) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 int * gfs2_dir_get_hash_table (struct gfs2_inode*) ;
 int leaf_dealloc (struct gfs2_inode*,size_t,size_t,scalar_t__,struct buffer_head*,int) ;

int gfs2_dir_exhash_dealloc(struct gfs2_inode *dip)
{
 struct buffer_head *bh;
 struct gfs2_leaf *leaf;
 u32 hsize, len;
 u32 index = 0, next_index;
 __be64 *lp;
 u64 leaf_no;
 int error = 0, last;

 hsize = BIT(dip->i_depth);

 lp = gfs2_dir_get_hash_table(dip);
 if (IS_ERR(lp))
  return PTR_ERR(lp);

 while (index < hsize) {
  leaf_no = be64_to_cpu(lp[index]);
  if (leaf_no) {
   error = get_leaf(dip, leaf_no, &bh);
   if (error)
    goto out;
   leaf = (struct gfs2_leaf *)bh->b_data;
   len = BIT(dip->i_depth - be16_to_cpu(leaf->lf_depth));

   next_index = (index & ~(len - 1)) + len;
   last = ((next_index >= hsize) ? 1 : 0);
   error = leaf_dealloc(dip, index, len, leaf_no, bh,
          last);
   brelse(bh);
   if (error)
    goto out;
   index = next_index;
  } else
   index++;
 }

 if (index != hsize) {
  gfs2_consist_inode(dip);
  error = -EIO;
 }

out:

 return error;
}
