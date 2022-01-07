
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metapath {int mp_aheight; } ;
struct iomap {scalar_t__ type; scalar_t__ length; int flags; int addr; } ;
struct inode {int i_blkbits; int i_sb; } ;
struct gfs2_inode {int dummy; } ;
struct buffer_head {int b_size; } ;
typedef scalar_t__ sector_t ;
typedef int loff_t ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int IOMAP_F_GFS2_BOUNDARY ;
 int IOMAP_F_NEW ;
 scalar_t__ IOMAP_HOLE ;
 int IOMAP_NULL_ADDR ;
 int IOMAP_WRITE ;
 int clear_buffer_boundary (struct buffer_head*) ;
 int clear_buffer_mapped (struct buffer_head*) ;
 int clear_buffer_new (struct buffer_head*) ;
 int gfs2_iomap_alloc (struct inode*,struct iomap*,struct metapath*) ;
 int gfs2_iomap_get (struct inode*,int,int,int ,struct iomap*,struct metapath*) ;
 int map_bh (struct buffer_head*,int ,int) ;
 int release_metapath (struct metapath*) ;
 int set_buffer_boundary (struct buffer_head*) ;
 int set_buffer_new (struct buffer_head*) ;
 int trace_gfs2_bmap (struct gfs2_inode*,struct buffer_head*,scalar_t__,int,int) ;

int gfs2_block_map(struct inode *inode, sector_t lblock,
     struct buffer_head *bh_map, int create)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 loff_t pos = (loff_t)lblock << inode->i_blkbits;
 loff_t length = bh_map->b_size;
 struct metapath mp = { .mp_aheight = 1, };
 struct iomap iomap = { };
 int ret;

 clear_buffer_mapped(bh_map);
 clear_buffer_new(bh_map);
 clear_buffer_boundary(bh_map);
 trace_gfs2_bmap(ip, bh_map, lblock, create, 1);

 if (create) {
  ret = gfs2_iomap_get(inode, pos, length, IOMAP_WRITE, &iomap, &mp);
  if (!ret && iomap.type == IOMAP_HOLE)
   ret = gfs2_iomap_alloc(inode, &iomap, &mp);
  release_metapath(&mp);
 } else {
  ret = gfs2_iomap_get(inode, pos, length, 0, &iomap, &mp);
  release_metapath(&mp);
 }
 if (ret)
  goto out;

 if (iomap.length > bh_map->b_size) {
  iomap.length = bh_map->b_size;
  iomap.flags &= ~IOMAP_F_GFS2_BOUNDARY;
 }
 if (iomap.addr != IOMAP_NULL_ADDR)
  map_bh(bh_map, inode->i_sb, iomap.addr >> inode->i_blkbits);
 bh_map->b_size = iomap.length;
 if (iomap.flags & IOMAP_F_GFS2_BOUNDARY)
  set_buffer_boundary(bh_map);
 if (iomap.flags & IOMAP_F_NEW)
  set_buffer_new(bh_map);

out:
 trace_gfs2_bmap(ip, bh_map, lblock, create, ret);
 return ret;
}
