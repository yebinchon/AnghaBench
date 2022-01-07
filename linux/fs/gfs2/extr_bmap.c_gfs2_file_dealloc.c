
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int dummy; } ;


 int punch_hole (struct gfs2_inode*,int ,int ) ;

int gfs2_file_dealloc(struct gfs2_inode *ip)
{
 return punch_hole(ip, 0, 0);
}
