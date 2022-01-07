
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int dummy; } ;
struct gfs2_dirent {int dummy; } ;
struct buffer_head {char* b_data; int b_size; } ;


 int EIO ;
 int dirent_check_reclen (struct gfs2_inode*,struct gfs2_dirent*,char*) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 scalar_t__ gfs2_dirent_sentinel (struct gfs2_dirent*) ;

__attribute__((used)) static int dirent_next(struct gfs2_inode *dip, struct buffer_head *bh,
         struct gfs2_dirent **dent)
{
 struct gfs2_dirent *cur = *dent, *tmp;
 char *bh_end = bh->b_data + bh->b_size;
 int ret;

 ret = dirent_check_reclen(dip, cur, bh_end);
 if (ret < 0)
  return ret;

 tmp = (void *)cur + ret;
 ret = dirent_check_reclen(dip, tmp, bh_end);
 if (ret == -EIO)
  return ret;


 if (gfs2_dirent_sentinel(tmp)) {
  gfs2_consist_inode(dip);
  return -EIO;
 }

 *dent = tmp;
 return 0;
}
