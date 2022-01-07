
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountpoint {int m_hash; int m_list; struct dentry* m_dentry; int m_count; } ;
struct list_head {int dummy; } ;
struct dentry {int d_lock; int d_flags; } ;


 int BUG_ON (int) ;
 int DCACHE_MOUNTED ;
 int dput_to_list (struct dentry*,struct list_head*) ;
 int hlist_del (int *) ;
 int hlist_empty (int *) ;
 int kfree (struct mountpoint*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void __put_mountpoint(struct mountpoint *mp, struct list_head *list)
{
 if (!--mp->m_count) {
  struct dentry *dentry = mp->m_dentry;
  BUG_ON(!hlist_empty(&mp->m_list));
  spin_lock(&dentry->d_lock);
  dentry->d_flags &= ~DCACHE_MOUNTED;
  spin_unlock(&dentry->d_lock);
  dput_to_list(dentry, list);
  hlist_del(&mp->m_hash);
  kfree(mp);
 }
}
