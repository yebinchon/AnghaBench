
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int i_mode; } ;
struct gfs2_inode {scalar_t__ i_no_addr; scalar_t__ i_no_formal_ino; TYPE_2__ i_inode; } ;
struct TYPE_3__ {int no_formal_ino; int no_addr; } ;
struct gfs2_dirent {int de_type; TYPE_1__ de_inum; } ;
struct buffer_head {int dummy; } ;


 int EIO ;
 int ENOENT ;
 int GFS2_I (struct inode*) ;
 scalar_t__ IF2DT (int ) ;
 scalar_t__ IS_ERR (struct gfs2_dirent*) ;
 int PTR_ERR (struct gfs2_dirent*) ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int brelse (struct buffer_head*) ;
 int gfs2_consist_inode (int ) ;
 int gfs2_dirent_find ;
 struct gfs2_dirent* gfs2_dirent_search (struct inode*,struct qstr const*,int ,struct buffer_head**) ;
 scalar_t__ unlikely (int) ;

int gfs2_dir_check(struct inode *dir, const struct qstr *name,
     const struct gfs2_inode *ip)
{
 struct buffer_head *bh;
 struct gfs2_dirent *dent;
 int ret = -ENOENT;

 dent = gfs2_dirent_search(dir, name, gfs2_dirent_find, &bh);
 if (dent) {
  if (IS_ERR(dent))
   return PTR_ERR(dent);
  if (ip) {
   if (be64_to_cpu(dent->de_inum.no_addr) != ip->i_no_addr)
    goto out;
   if (be64_to_cpu(dent->de_inum.no_formal_ino) !=
       ip->i_no_formal_ino)
    goto out;
   if (unlikely(IF2DT(ip->i_inode.i_mode) !=
       be16_to_cpu(dent->de_type))) {
    gfs2_consist_inode(GFS2_I(dir));
    ret = -EIO;
    goto out;
   }
  }
  ret = 0;
out:
  brelse(bh);
 }
 return ret;
}
