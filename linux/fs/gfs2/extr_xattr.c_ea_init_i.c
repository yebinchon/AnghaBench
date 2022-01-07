
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_eattr; } ;
struct gfs2_ea_request {int dummy; } ;
struct buffer_head {int b_blocknr; } ;


 int GFS2_EA_BH2FIRST (struct buffer_head*) ;
 int brelse (struct buffer_head*) ;
 int ea_alloc_blk (struct gfs2_inode*,struct buffer_head**) ;
 int ea_write (struct gfs2_inode*,int ,struct gfs2_ea_request*) ;

__attribute__((used)) static int ea_init_i(struct gfs2_inode *ip, struct gfs2_ea_request *er,
       void *private)
{
 struct buffer_head *bh;
 int error;

 error = ea_alloc_blk(ip, &bh);
 if (error)
  return error;

 ip->i_eattr = bh->b_blocknr;
 error = ea_write(ip, GFS2_EA_BH2FIRST(bh), er);

 brelse(bh);

 return error;
}
