
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {scalar_t__ i_size; } ;
struct gfs2_inode {int i_gl; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef scalar_t__ loff_t ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 int brelse (struct buffer_head*) ;
 int gfs2_meta_inode_buffer (struct gfs2_inode*,struct buffer_head**) ;
 int gfs2_trans_add_meta (int ,struct buffer_head*) ;
 int memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int stuffed_zero_range(struct inode *inode, loff_t offset, loff_t length)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 struct buffer_head *dibh;
 int error;

 if (offset >= inode->i_size)
  return 0;
 if (offset + length > inode->i_size)
  length = inode->i_size - offset;

 error = gfs2_meta_inode_buffer(ip, &dibh);
 if (error)
  return error;
 gfs2_trans_add_meta(ip->i_gl, dibh);
 memset(dibh->b_data + sizeof(struct gfs2_dinode) + offset, 0,
        length);
 brelse(dibh);
 return 0;
}
