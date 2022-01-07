
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct omfs_inode {scalar_t__ i_type; int i_name; int i_sibling; int i_head; } ;
struct inode {int i_sb; } ;
struct dir_context {int pos; } ;
struct buffer_head {scalar_t__ b_data; } ;


 unsigned char DT_DIR ;
 unsigned char DT_REG ;
 scalar_t__ OMFS_DIR ;
 int OMFS_NAMELEN ;
 int OMFS_SB (int ) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int dir_emit (struct dir_context*,int ,int ,int ,unsigned char) ;
 struct buffer_head* omfs_bread (int ,int ) ;
 scalar_t__ omfs_is_bad (int ,int *,int ) ;
 int strnlen (int ,int ) ;

__attribute__((used)) static bool omfs_fill_chain(struct inode *dir, struct dir_context *ctx,
  u64 fsblock, int hindex)
{

 while (fsblock != ~0) {
  struct buffer_head *bh = omfs_bread(dir->i_sb, fsblock);
  struct omfs_inode *oi;
  u64 self;
  unsigned char d_type;

  if (!bh)
   return 1;

  oi = (struct omfs_inode *) bh->b_data;
  if (omfs_is_bad(OMFS_SB(dir->i_sb), &oi->i_head, fsblock)) {
   brelse(bh);
   return 1;
  }

  self = fsblock;
  fsblock = be64_to_cpu(oi->i_sibling);


  if (hindex) {
   hindex--;
   brelse(bh);
   continue;
  }

  d_type = (oi->i_type == OMFS_DIR) ? DT_DIR : DT_REG;

  if (!dir_emit(ctx, oi->i_name,
         strnlen(oi->i_name, OMFS_NAMELEN),
         self, d_type)) {
   brelse(bh);
   return 0;
  }
  brelse(bh);
  ctx->pos++;
 }
 return 1;
}
