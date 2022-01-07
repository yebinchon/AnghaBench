
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mountpoint {int m_count; int m_list; int m_hash; int m_dentry; } ;
struct dentry {int dummy; } ;


 int EBUSY ;
 int ENOENT ;
 int ENOMEM ;
 struct mountpoint* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (int *) ;
 scalar_t__ d_mountpoint (struct dentry*) ;
 int d_set_mounted (struct dentry*) ;
 scalar_t__ d_unlinked (struct dentry*) ;
 int dget (struct dentry*) ;
 int hlist_add_head (int *,int ) ;
 int kfree (struct mountpoint*) ;
 struct mountpoint* kmalloc (int,int ) ;
 struct mountpoint* lookup_mountpoint (struct dentry*) ;
 int mount_lock ;
 int mp_hash (struct dentry*) ;
 int read_seqlock_excl (int *) ;
 int read_sequnlock_excl (int *) ;

__attribute__((used)) static struct mountpoint *get_mountpoint(struct dentry *dentry)
{
 struct mountpoint *mp, *new = ((void*)0);
 int ret;

 if (d_mountpoint(dentry)) {

  if (d_unlinked(dentry))
   return ERR_PTR(-ENOENT);
mountpoint:
  read_seqlock_excl(&mount_lock);
  mp = lookup_mountpoint(dentry);
  read_sequnlock_excl(&mount_lock);
  if (mp)
   goto done;
 }

 if (!new)
  new = kmalloc(sizeof(struct mountpoint), GFP_KERNEL);
 if (!new)
  return ERR_PTR(-ENOMEM);



 ret = d_set_mounted(dentry);


 if (ret == -EBUSY)
  goto mountpoint;


 mp = ERR_PTR(ret);
 if (ret)
  goto done;


 read_seqlock_excl(&mount_lock);
 new->m_dentry = dget(dentry);
 new->m_count = 1;
 hlist_add_head(&new->m_hash, mp_hash(dentry));
 INIT_HLIST_HEAD(&new->m_list);
 read_sequnlock_excl(&mount_lock);

 mp = new;
 new = ((void*)0);
done:
 kfree(new);
 return mp;
}
