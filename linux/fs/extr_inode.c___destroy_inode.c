
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {scalar_t__ i_default_acl; scalar_t__ i_acl; TYPE_1__* i_sb; int i_nlink; } ;
struct TYPE_2__ {int s_remove_count; } ;


 int BUG_ON (int ) ;
 int WARN_ON (int) ;
 int atomic_long_dec (int *) ;
 scalar_t__ atomic_long_read (int *) ;
 int fsnotify_inode_delete (struct inode*) ;
 int inode_detach_wb (struct inode*) ;
 int inode_has_buffers (struct inode*) ;
 int is_uncached_acl (scalar_t__) ;
 int locks_free_lock_context (struct inode*) ;
 int nr_inodes ;
 int posix_acl_release (scalar_t__) ;
 int security_inode_free (struct inode*) ;
 int this_cpu_dec (int ) ;

void __destroy_inode(struct inode *inode)
{
 BUG_ON(inode_has_buffers(inode));
 inode_detach_wb(inode);
 security_inode_free(inode);
 fsnotify_inode_delete(inode);
 locks_free_lock_context(inode);
 if (!inode->i_nlink) {
  WARN_ON(atomic_long_read(&inode->i_sb->s_remove_count) == 0);
  atomic_long_dec(&inode->i_sb->s_remove_count);
 }







 this_cpu_dec(nr_inodes);
}
