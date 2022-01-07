
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct quad_buffer_head {int dummy; } ;
struct inode {scalar_t__ i_ino; int i_sb; } ;
struct hpfs_inode_info {scalar_t__ i_dno; scalar_t__ i_parent_dir; } ;
struct hpfs_dirent {int namelen; int* name; int fnode; int not_8x3; scalar_t__ last; scalar_t__ first; } ;
struct TYPE_5__ {TYPE_1__* external; } ;
struct fnode {TYPE_2__ u; } ;
struct file {int f_pos; } ;
struct dir_context {int pos; } ;
struct buffer_head {int dummy; } ;
typedef int loff_t ;
struct TYPE_6__ {int sb_chk; int sb_lowercase; } ;
struct TYPE_4__ {int disk_secno; } ;


 int DT_DIR ;
 int DT_UNKNOWN ;
 int EFSERROR ;
 int EIOERROR ;
 int ENOENT ;
 int brelse (struct buffer_head*) ;
 int dir_emit (struct dir_context*,...) ;
 int dir_emit_dot (struct file*,struct dir_context*) ;
 struct inode* file_inode (struct file*) ;
 int fnode_is_dir (struct fnode*) ;
 int hpfs_add_pos (struct inode*,int *) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 scalar_t__ hpfs_chk_sectors (int ,scalar_t__,int,char*) ;
 scalar_t__ hpfs_de_as_down_as_possible (int ,scalar_t__) ;
 int hpfs_error (int ,char*,unsigned long,...) ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 int hpfs_lock (int ) ;
 struct fnode* hpfs_map_fnode (int ,scalar_t__,struct buffer_head**) ;
 TYPE_3__* hpfs_sb (int ) ;
 scalar_t__ hpfs_stop_cycles (int ,int,int*,int*,char*) ;
 unsigned char* hpfs_translate_name (int ,int*,int,int,int ) ;
 int hpfs_unlock (int ) ;
 int kfree (unsigned char*) ;
 scalar_t__ le32_to_cpu (int ) ;
 struct hpfs_dirent* map_pos_dirent (struct inode*,int*,struct quad_buffer_head*) ;
 int pr_err (char*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hpfs_readdir(struct file *file, struct dir_context *ctx)
{
 struct inode *inode = file_inode(file);
 struct hpfs_inode_info *hpfs_inode = hpfs_i(inode);
 struct quad_buffer_head qbh;
 struct hpfs_dirent *de;
 int lc;
 loff_t next_pos;
 unsigned char *tempname;
 int c1, c2 = 0;
 int ret = 0;

 hpfs_lock(inode->i_sb);

 if (hpfs_sb(inode->i_sb)->sb_chk) {
  if (hpfs_chk_sectors(inode->i_sb, inode->i_ino, 1, "dir_fnode")) {
   ret = -EFSERROR;
   goto out;
  }
  if (hpfs_chk_sectors(inode->i_sb, hpfs_inode->i_dno, 4, "dir_dnode")) {
   ret = -EFSERROR;
   goto out;
  }
 }
 if (hpfs_sb(inode->i_sb)->sb_chk >= 2) {
  struct buffer_head *bh;
  struct fnode *fno;
  int e = 0;
  if (!(fno = hpfs_map_fnode(inode->i_sb, inode->i_ino, &bh))) {
   ret = -EIOERROR;
   goto out;
  }
  if (!fnode_is_dir(fno)) {
   e = 1;
   hpfs_error(inode->i_sb, "not a directory, fnode %08lx",
     (unsigned long)inode->i_ino);
  }
  if (hpfs_inode->i_dno != le32_to_cpu(fno->u.external[0].disk_secno)) {
   e = 1;
   hpfs_error(inode->i_sb, "corrupted inode: i_dno == %08x, fnode -> dnode == %08x", hpfs_inode->i_dno, le32_to_cpu(fno->u.external[0].disk_secno));
  }
  brelse(bh);
  if (e) {
   ret = -EFSERROR;
   goto out;
  }
 }
 lc = hpfs_sb(inode->i_sb)->sb_lowercase;
 if (ctx->pos == 12) {
  ctx->pos = 13;
  goto out;
 }
 if (ctx->pos == 13) {
  ret = -ENOENT;
  goto out;
 }

 while (1) {
  again:



  if (hpfs_sb(inode->i_sb)->sb_chk)
   if (hpfs_stop_cycles(inode->i_sb, ctx->pos, &c1, &c2, "hpfs_readdir")) {
    ret = -EFSERROR;
    goto out;
   }
  if (ctx->pos == 12)
   goto out;
  if (ctx->pos == 3 || ctx->pos == 4 || ctx->pos == 5) {
   pr_err("pos==%d\n", (int)ctx->pos);
   goto out;
  }
  if (ctx->pos == 0) {
   if (!dir_emit_dot(file, ctx))
    goto out;
   ctx->pos = 11;
  }
  if (ctx->pos == 11) {
   if (!dir_emit(ctx, "..", 2, hpfs_inode->i_parent_dir, DT_DIR))
    goto out;
   ctx->pos = 1;
  }
  if (ctx->pos == 1) {
   ret = hpfs_add_pos(inode, &file->f_pos);
   if (unlikely(ret < 0))
    goto out;
   ctx->pos = ((loff_t) hpfs_de_as_down_as_possible(inode->i_sb, hpfs_inode->i_dno) << 4) + 1;
  }
  next_pos = ctx->pos;
  if (!(de = map_pos_dirent(inode, &next_pos, &qbh))) {
   ctx->pos = next_pos;
   ret = -EIOERROR;
   goto out;
  }
  if (de->first || de->last) {
   if (hpfs_sb(inode->i_sb)->sb_chk) {
    if (de->first && !de->last && (de->namelen != 2
        || de ->name[0] != 1 || de->name[1] != 1))
     hpfs_error(inode->i_sb, "hpfs_readdir: bad ^A^A entry; pos = %08lx", (unsigned long)ctx->pos);
    if (de->last && (de->namelen != 1 || de ->name[0] != 255))
     hpfs_error(inode->i_sb, "hpfs_readdir: bad \\377 entry; pos = %08lx", (unsigned long)ctx->pos);
   }
   hpfs_brelse4(&qbh);
   ctx->pos = next_pos;
   goto again;
  }
  tempname = hpfs_translate_name(inode->i_sb, de->name, de->namelen, lc, de->not_8x3);
  if (!dir_emit(ctx, tempname, de->namelen, le32_to_cpu(de->fnode), DT_UNKNOWN)) {
   if (tempname != de->name) kfree(tempname);
   hpfs_brelse4(&qbh);
   goto out;
  }
  ctx->pos = next_pos;
  if (tempname != de->name) kfree(tempname);
  hpfs_brelse4(&qbh);
 }
out:
 hpfs_unlock(inode->i_sb);
 return ret;
}
