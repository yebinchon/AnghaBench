
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct iattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ journal_info; } ;


 int GFS2_SB (struct inode*) ;
 int RES_DINODE ;
 int __gfs2_setattr_simple (struct inode*,struct iattr*) ;
 TYPE_1__* current ;
 int gfs2_trans_begin (int ,int ,int ) ;
 int gfs2_trans_end (int ) ;

int gfs2_setattr_simple(struct inode *inode, struct iattr *attr)
{
 int error;

 if (current->journal_info)
  return __gfs2_setattr_simple(inode, attr);

 error = gfs2_trans_begin(GFS2_SB(inode), RES_DINODE, 0);
 if (error)
  return error;

 error = __gfs2_setattr_simple(inode, attr);
 gfs2_trans_end(GFS2_SB(inode));
 return error;
}
