
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_ctime; } ;
struct gfs2_inode {TYPE_1__ i_inode; } ;


 int DT_DIR ;
 int current_time (TYPE_1__*) ;
 int gfs2_dir_mvino (struct gfs2_inode*,int *,struct gfs2_inode*,int ) ;
 int gfs2_qdotdot ;
 int mark_inode_dirty_sync (TYPE_1__*) ;

__attribute__((used)) static int update_moved_ino(struct gfs2_inode *ip, struct gfs2_inode *ndip,
       int dir_rename)
{
 if (dir_rename)
  return gfs2_dir_mvino(ip, &gfs2_qdotdot, ndip, DT_DIR);

 ip->i_inode.i_ctime = current_time(&ip->i_inode);
 mark_inode_dirty_sync(&ip->i_inode);
 return 0;
}
