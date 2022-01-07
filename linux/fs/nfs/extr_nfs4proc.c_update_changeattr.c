
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_change_info {int dummy; } ;
struct inode {int i_lock; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int update_changeattr_locked (struct inode*,struct nfs4_change_info*,unsigned long,unsigned long) ;

__attribute__((used)) static void
update_changeattr(struct inode *dir, struct nfs4_change_info *cinfo,
  unsigned long timestamp, unsigned long cache_validity)
{
 spin_lock(&dir->i_lock);
 update_changeattr_locked(dir, cinfo, timestamp, cache_validity);
 spin_unlock(&dir->i_lock);
}
