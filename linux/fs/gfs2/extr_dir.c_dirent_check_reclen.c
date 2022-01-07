
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct gfs2_inode {int dummy; } ;
struct gfs2_dirent {int de_rec_len; } ;


 int EIO ;
 int ENOENT ;
 int be16_to_cpu (int ) ;
 int gfs2_consist_inode (struct gfs2_inode*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int dirent_check_reclen(struct gfs2_inode *dip,
          const struct gfs2_dirent *d, const void *end_p)
{
 const void *ptr = d;
 u16 rec_len = be16_to_cpu(d->de_rec_len);

 if (unlikely(rec_len < sizeof(struct gfs2_dirent)))
  goto broken;
 ptr += rec_len;
 if (ptr < end_p)
  return rec_len;
 if (ptr == end_p)
  return -ENOENT;
broken:
 gfs2_consist_inode(dip);
 return -EIO;
}
