
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_root; } ;
struct inode {struct super_block* i_sb; } ;
struct gfs2_inode {struct inode i_inode; } ;


 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 struct inode* d_inode (int ) ;
 struct inode* gfs2_lookupi (struct inode*,int *,int) ;
 int gfs2_qdotdot ;
 int igrab (struct inode*) ;
 int iput (struct inode*) ;

__attribute__((used)) static int gfs2_ok_to_move(struct gfs2_inode *this, struct gfs2_inode *to)
{
 struct inode *dir = &to->i_inode;
 struct super_block *sb = dir->i_sb;
 struct inode *tmp;
 int error = 0;

 igrab(dir);

 for (;;) {
  if (dir == &this->i_inode) {
   error = -EINVAL;
   break;
  }
  if (dir == d_inode(sb->s_root)) {
   error = 0;
   break;
  }

  tmp = gfs2_lookupi(dir, &gfs2_qdotdot, 1);
  if (!tmp) {
   error = -ENOENT;
   break;
  }
  if (IS_ERR(tmp)) {
   error = PTR_ERR(tmp);
   break;
  }

  iput(dir);
  dir = tmp;
 }

 iput(dir);

 return error;
}
