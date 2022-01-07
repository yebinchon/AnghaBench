
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_inode; } ;


 int i_size_read (int *) ;
 int punch_hole (struct gfs2_inode*,int ,int ) ;
 int trunc_end (struct gfs2_inode*) ;

int gfs2_truncatei_resume(struct gfs2_inode *ip)
{
 int error;
 error = punch_hole(ip, i_size_read(&ip->i_inode), 0);
 if (!error)
  error = trunc_end(ip);
 return error;
}
