
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_mapping; } ;
struct TYPE_2__ {int * a_ops; } ;


 int GFS2_I (struct inode*) ;
 int gfs2_aops ;
 scalar_t__ gfs2_is_jdata (int ) ;
 int gfs2_jdata_aops ;

void gfs2_set_aops(struct inode *inode)
{
 if (gfs2_is_jdata(GFS2_I(inode)))
  inode->i_mapping->a_ops = &gfs2_jdata_aops;
 else
  inode->i_mapping->a_ops = &gfs2_aops;
}
