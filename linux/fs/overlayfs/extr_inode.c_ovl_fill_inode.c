
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct inode {unsigned long i_ino; int i_mode; int * i_op; int * i_fop; TYPE_1__* i_mapping; int i_default_acl; int i_acl; int i_flags; int i_sb; } ;
typedef int dev_t ;
struct TYPE_2__ {int * a_ops; } ;


 int ACL_DONT_CACHE ;


 int S_IFMT ;

 int S_NOCMTIME ;
 unsigned long get_next_ino () ;
 int init_special_inode (struct inode*,int,int ) ;
 int ovl_aops ;
 int ovl_dir_inode_operations ;
 int ovl_dir_operations ;
 int ovl_file_inode_operations ;
 int ovl_file_operations ;
 int ovl_lockdep_annotate_inode_mutex_key (struct inode*) ;
 scalar_t__ ovl_same_sb (int ) ;
 int ovl_special_inode_operations ;
 int ovl_symlink_inode_operations ;
 int ovl_xino_bits (int ) ;

__attribute__((used)) static void ovl_fill_inode(struct inode *inode, umode_t mode, dev_t rdev,
      unsigned long ino, int fsid)
{
 int xinobits = ovl_xino_bits(inode->i_sb);
 if (ovl_same_sb(inode->i_sb) || xinobits) {
  inode->i_ino = ino;
  if (xinobits && fsid && !(ino >> (64 - xinobits)))
   inode->i_ino |= (unsigned long)fsid << (64 - xinobits);
 } else {
  inode->i_ino = get_next_ino();
 }
 inode->i_mode = mode;
 inode->i_flags |= S_NOCMTIME;




 ovl_lockdep_annotate_inode_mutex_key(inode);

 switch (mode & S_IFMT) {
 case 128:
  inode->i_op = &ovl_file_inode_operations;
  inode->i_fop = &ovl_file_operations;
  inode->i_mapping->a_ops = &ovl_aops;
  break;

 case 130:
  inode->i_op = &ovl_dir_inode_operations;
  inode->i_fop = &ovl_dir_operations;
  break;

 case 129:
  inode->i_op = &ovl_symlink_inode_operations;
  break;

 default:
  inode->i_op = &ovl_special_inode_operations;
  init_special_inode(inode, mode, rdev);
  break;
 }
}
