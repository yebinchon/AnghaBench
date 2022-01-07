
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_inode {int i_inode; int i_gl; } ;
struct buffer_head {int dummy; } ;


 int DIO_WAIT ;
 int EIO ;
 int GFS2_METATYPE_JD ;
 int GFS2_SB (int *) ;
 int brelse (struct buffer_head*) ;
 int gfs2_meta_read (int ,int ,int ,int ,struct buffer_head**) ;
 scalar_t__ gfs2_metatype_check (int ,struct buffer_head*,int ) ;

__attribute__((used)) static int gfs2_dir_get_existing_buffer(struct gfs2_inode *ip, u64 block,
     struct buffer_head **bhp)
{
 struct buffer_head *bh;
 int error;

 error = gfs2_meta_read(ip->i_gl, block, DIO_WAIT, 0, &bh);
 if (error)
  return error;
 if (gfs2_metatype_check(GFS2_SB(&ip->i_inode), bh, GFS2_METATYPE_JD)) {
  brelse(bh);
  return -EIO;
 }
 *bhp = bh;
 return 0;
}
