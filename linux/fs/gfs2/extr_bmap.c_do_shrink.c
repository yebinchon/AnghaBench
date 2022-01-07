
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct inode {int dummy; } ;
struct gfs2_inode {int dummy; } ;


 struct gfs2_inode* GFS2_I (struct inode*) ;
 scalar_t__ gfs2_is_stuffed (struct gfs2_inode*) ;
 int punch_hole (struct gfs2_inode*,int ,int ) ;
 int trunc_end (struct gfs2_inode*) ;
 int trunc_start (struct inode*,int ) ;

__attribute__((used)) static int do_shrink(struct inode *inode, u64 newsize)
{
 struct gfs2_inode *ip = GFS2_I(inode);
 int error;

 error = trunc_start(inode, newsize);
 if (error < 0)
  return error;
 if (gfs2_is_stuffed(ip))
  return 0;

 error = punch_hole(ip, newsize, 0);
 if (error == 0)
  error = trunc_end(ip);

 return error;
}
