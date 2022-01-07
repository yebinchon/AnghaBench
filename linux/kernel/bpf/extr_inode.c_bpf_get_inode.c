
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct super_block {int dummy; } ;
struct inode {int i_atime; int i_ctime; int i_mtime; int i_ino; } ;


 int EINVAL ;
 int ENOSPC ;
 struct inode* ERR_PTR (int ) ;


 int S_IFMT ;

 int current_time (struct inode*) ;
 int get_next_ino () ;
 int inode_init_owner (struct inode*,struct inode const*,int) ;
 struct inode* new_inode (struct super_block*) ;

__attribute__((used)) static struct inode *bpf_get_inode(struct super_block *sb,
       const struct inode *dir,
       umode_t mode)
{
 struct inode *inode;

 switch (mode & S_IFMT) {
 case 130:
 case 128:
 case 129:
  break;
 default:
  return ERR_PTR(-EINVAL);
 }

 inode = new_inode(sb);
 if (!inode)
  return ERR_PTR(-ENOSPC);

 inode->i_ino = get_next_ino();
 inode->i_atime = current_time(inode);
 inode->i_mtime = inode->i_atime;
 inode->i_ctime = inode->i_atime;

 inode_init_owner(inode, dir, mode);

 return inode;
}
