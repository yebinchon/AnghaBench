
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {int dentry; } ;


 int __path_is_mountpoint (struct path const*) ;
 int d_mountpoint (int ) ;
 int mount_lock ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 unsigned int read_seqbegin (int *) ;
 scalar_t__ read_seqretry (int *,unsigned int) ;

bool path_is_mountpoint(const struct path *path)
{
 unsigned seq;
 bool res;

 if (!d_mountpoint(path->dentry))
  return 0;

 rcu_read_lock();
 do {
  seq = read_seqbegin(&mount_lock);
  res = __path_is_mountpoint(path);
 } while (read_seqretry(&mount_lock, seq));
 rcu_read_unlock();

 return res;
}
