
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountpoint {struct dentry* m_dentry; } ;
struct dentry {int d_inode; } ;


 int inode_unlock (int ) ;
 int mount_lock ;
 int namespace_unlock () ;
 int put_mountpoint (struct mountpoint*) ;
 int read_seqlock_excl (int *) ;
 int read_sequnlock_excl (int *) ;

__attribute__((used)) static void unlock_mount(struct mountpoint *where)
{
 struct dentry *dentry = where->m_dentry;

 read_seqlock_excl(&mount_lock);
 put_mountpoint(where);
 read_sequnlock_excl(&mount_lock);

 namespace_unlock();
 inode_unlock(dentry->d_inode);
}
