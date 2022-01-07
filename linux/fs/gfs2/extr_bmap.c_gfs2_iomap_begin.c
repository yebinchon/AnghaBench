
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {int mp_aheight; } ;
struct iomap {int type; int flags; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int dummy; } ;
typedef int loff_t ;


 int ENOTBLK ;
 struct gfs2_inode* GFS2_I (struct inode*) ;
 unsigned int IOMAP_DIRECT ;
 int IOMAP_F_BUFFER_HEAD ;
 int IOMAP_HOLE ;
 int IOMAP_MAPPED ;


 int gfs2_iomap_begin_write (struct inode*,int ,int ,unsigned int,struct iomap*,struct metapath*) ;
 int gfs2_iomap_get (struct inode*,int ,int ,unsigned int,struct iomap*,struct metapath*) ;
 scalar_t__ gfs2_iomap_need_write_lock (unsigned int) ;
 int gfs2_write_lock (struct inode*) ;
 int gfs2_write_unlock (struct inode*) ;
 int release_metapath (struct metapath*) ;
 int trace_gfs2_iomap_end (struct gfs2_inode*,struct iomap*,int) ;
 int trace_gfs2_iomap_start (struct gfs2_inode*,int ,int ,unsigned int) ;

__attribute__((used)) static int gfs2_iomap_begin(struct inode *inode, loff_t pos, loff_t length,
       unsigned flags, struct iomap *iomap)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct metapath mp = { .mp_aheight = 1, };
 int ret;

 iomap->flags |= IOMAP_F_BUFFER_HEAD;

 trace_gfs2_iomap_start(ip, pos, length, flags);
 if (gfs2_iomap_need_write_lock(flags)) {
  ret = gfs2_write_lock(inode);
  if (ret)
   goto out;
 }

 ret = gfs2_iomap_get(inode, pos, length, flags, iomap, &mp);
 if (ret)
  goto out_unlock;

 switch(flags & (129 | 128)) {
 case 129:
  if (flags & IOMAP_DIRECT) {




   if (iomap->type != IOMAP_MAPPED)
    ret = -ENOTBLK;
   goto out_unlock;
  }
  break;
 case 128:
  if (iomap->type == IOMAP_HOLE)
   goto out_unlock;
  break;
 default:
  goto out_unlock;
 }

 ret = gfs2_iomap_begin_write(inode, pos, length, flags, iomap, &mp);

out_unlock:
 if (ret && gfs2_iomap_need_write_lock(flags))
  gfs2_write_unlock(inode);
 release_metapath(&mp);
out:
 trace_gfs2_iomap_end(ip, iomap, ret);
 return ret;
}
