
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_inode {int i_inode; int i_gl; } ;
struct buffer_head {int dummy; } ;


 int DIO_WAIT ;
 int EIO ;
 int GFS2_METATYPE_LF ;
 int GFS2_SB (int *) ;
 int gfs2_meta_read (int ,int ,int ,int ,struct buffer_head**) ;
 scalar_t__ gfs2_metatype_check (int ,struct buffer_head*,int ) ;

__attribute__((used)) static int get_leaf(struct gfs2_inode *dip, u64 leaf_no,
      struct buffer_head **bhp)
{
 int error;

 error = gfs2_meta_read(dip->i_gl, leaf_no, DIO_WAIT, 0, bhp);
 if (!error && gfs2_metatype_check(GFS2_SB(&dip->i_inode), *bhp, GFS2_METATYPE_LF)) {

  error = -EIO;
 }

 return error;
}
