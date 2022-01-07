
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_fsnotify_inode_refs; } ;
struct inode {struct super_block* i_sb; } ;


 unsigned int FSNOTIFY_OBJ_TYPE_INODE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ atomic_long_dec_and_test (int *) ;
 int iput (struct inode*) ;
 int wake_up_var (int *) ;

__attribute__((used)) static void fsnotify_drop_object(unsigned int type, void *objp)
{
 struct inode *inode;
 struct super_block *sb;

 if (!objp)
  return;

 if (WARN_ON_ONCE(type != FSNOTIFY_OBJ_TYPE_INODE))
  return;
 inode = objp;
 sb = inode->i_sb;
 iput(inode);
 if (atomic_long_dec_and_test(&sb->s_fsnotify_inode_refs))
  wake_up_var(&sb->s_fsnotify_inode_refs);
}
