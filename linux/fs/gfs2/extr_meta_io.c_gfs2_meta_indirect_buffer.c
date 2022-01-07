
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_rahead; int i_no_addr; struct gfs2_glock* i_gl; int i_inode; } ;
struct gfs2_glock {int dummy; } ;
struct buffer_head {int dummy; } ;


 int DIO_WAIT ;
 int EIO ;
 int GFS2_METATYPE_DI ;
 int GFS2_METATYPE_IN ;
 struct gfs2_sbd* GFS2_SB (int *) ;
 int brelse (struct buffer_head*) ;
 int gfs2_meta_read (struct gfs2_glock*,int ,int ,int,struct buffer_head**) ;
 scalar_t__ gfs2_metatype_check (struct gfs2_sbd*,struct buffer_head*,int ) ;

int gfs2_meta_indirect_buffer(struct gfs2_inode *ip, int height, u64 num,
         struct buffer_head **bhp)
{
 struct gfs2_sbd *sdp = GFS2_SB(&ip->i_inode);
 struct gfs2_glock *gl = ip->i_gl;
 struct buffer_head *bh;
 int ret = 0;
 u32 mtype = height ? GFS2_METATYPE_IN : GFS2_METATYPE_DI;
 int rahead = 0;

 if (num == ip->i_no_addr)
  rahead = ip->i_rahead;

 ret = gfs2_meta_read(gl, num, DIO_WAIT, rahead, &bh);
 if (ret == 0 && gfs2_metatype_check(sdp, bh, mtype)) {
  brelse(bh);
  ret = -EIO;
 } else {
  *bhp = bh;
 }
 return ret;
}
