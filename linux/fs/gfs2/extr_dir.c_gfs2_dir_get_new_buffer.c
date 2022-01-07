
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct gfs2_meta_header {int dummy; } ;
struct gfs2_inode {int i_gl; } ;
struct buffer_head {int dummy; } ;


 int GFS2_FORMAT_JD ;
 int GFS2_METATYPE_JD ;
 int gfs2_buffer_clear_tail (struct buffer_head*,int) ;
 struct buffer_head* gfs2_meta_new (int ,int ) ;
 int gfs2_metatype_set (struct buffer_head*,int ,int ) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;

int gfs2_dir_get_new_buffer(struct gfs2_inode *ip, u64 block,
       struct buffer_head **bhp)
{
 struct buffer_head *bh;

 bh = gfs2_meta_new(ip->i_gl, block);
 gfs2_trans_add_meta(ip->i_gl, bh);
 gfs2_metatype_set(bh, GFS2_METATYPE_JD, GFS2_FORMAT_JD);
 gfs2_buffer_clear_tail(bh, sizeof(struct gfs2_meta_header));
 *bhp = bh;
 return 0;
}
