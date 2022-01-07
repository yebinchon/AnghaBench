
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {int mp_aheight; } ;
struct iomap {scalar_t__ type; } ;
struct inode {int dummy; } ;
typedef int loff_t ;


 scalar_t__ IOMAP_HOLE ;
 int IOMAP_WRITE ;
 int gfs2_iomap_alloc (struct inode*,struct iomap*,struct metapath*) ;
 int gfs2_iomap_get (struct inode*,int ,int ,int ,struct iomap*,struct metapath*) ;
 int release_metapath (struct metapath*) ;

int gfs2_iomap_get_alloc(struct inode *inode, loff_t pos, loff_t length,
    struct iomap *iomap)
{
 struct metapath mp = { .mp_aheight = 1, };
 int ret;

 ret = gfs2_iomap_get(inode, pos, length, IOMAP_WRITE, iomap, &mp);
 if (!ret && iomap->type == IOMAP_HOLE)
  ret = gfs2_iomap_alloc(inode, iomap, &mp);
 release_metapath(&mp);
 return ret;
}
