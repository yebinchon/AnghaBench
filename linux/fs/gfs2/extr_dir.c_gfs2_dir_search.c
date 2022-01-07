
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct qstr {int dummy; } ;
struct TYPE_3__ {int no_formal_ino; int no_addr; } ;
struct inode {int i_sb; TYPE_1__ de_inum; int de_rahead; int de_type; } ;
struct gfs2_dirent {int i_sb; TYPE_1__ de_inum; int de_rahead; int de_type; } ;
struct buffer_head {int dummy; } ;
struct TYPE_4__ {int i_rahead; } ;


 int EEXIST ;
 int ENOENT ;
 struct inode* ERR_CAST (struct inode*) ;
 struct inode* ERR_PTR (int ) ;
 int GFS2_BLKST_FREE ;
 TYPE_2__* GFS2_I (struct inode*) ;
 scalar_t__ IS_ERR (struct inode*) ;
 int be16_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int gfs2_dirent_find ;
 struct inode* gfs2_dirent_search (struct inode*,struct qstr const*,int ,struct buffer_head**) ;
 struct inode* gfs2_inode_lookup (int ,int ,int ,int ,int ) ;

struct inode *gfs2_dir_search(struct inode *dir, const struct qstr *name,
         bool fail_on_exist)
{
 struct buffer_head *bh;
 struct gfs2_dirent *dent;
 u64 addr, formal_ino;
 u16 dtype;

 dent = gfs2_dirent_search(dir, name, gfs2_dirent_find, &bh);
 if (dent) {
  struct inode *inode;
  u16 rahead;

  if (IS_ERR(dent))
   return ERR_CAST(dent);
  dtype = be16_to_cpu(dent->de_type);
  rahead = be16_to_cpu(dent->de_rahead);
  addr = be64_to_cpu(dent->de_inum.no_addr);
  formal_ino = be64_to_cpu(dent->de_inum.no_formal_ino);
  brelse(bh);
  if (fail_on_exist)
   return ERR_PTR(-EEXIST);
  inode = gfs2_inode_lookup(dir->i_sb, dtype, addr, formal_ino,
       GFS2_BLKST_FREE );
  if (!IS_ERR(inode))
   GFS2_I(inode)->i_rahead = rahead;
  return inode;
 }
 return ERR_PTR(-ENOENT);
}
