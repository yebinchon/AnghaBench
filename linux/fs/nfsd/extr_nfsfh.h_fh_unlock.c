
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct svc_fh {int fh_locked; int fh_dentry; } ;


 int d_inode (int ) ;
 int fill_post_wcc (struct svc_fh*) ;
 int inode_unlock (int ) ;

__attribute__((used)) static inline void
fh_unlock(struct svc_fh *fhp)
{
 if (fhp->fh_locked) {
  fill_post_wcc(fhp);
  inode_unlock(d_inode(fhp->fh_dentry));
  fhp->fh_locked = 0;
 }
}
