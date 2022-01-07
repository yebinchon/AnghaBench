
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int inocache_lock; int inocache_wq; } ;
struct jffs2_inode_info {int dummy; } ;
struct jffs2_inode_cache {scalar_t__ state; int ino; } ;
struct inode {int dummy; } ;


 int EIO ;
 struct jffs2_inode_info* ERR_CAST (struct inode*) ;
 struct jffs2_inode_info* ERR_PTR (int ) ;
 scalar_t__ INO_STATE_CHECKEDABSENT ;
 scalar_t__ IS_ERR (struct inode*) ;
 struct jffs2_inode_info* JFFS2_INODE_INFO (struct inode*) ;
 int OFNI_BS_2SFFJ (struct jffs2_sb_info*) ;
 struct inode* ilookup (int ,int) ;
 int iput (struct inode*) ;
 scalar_t__ is_bad_inode (struct inode*) ;
 int jffs2_dbg (int,char*,int,...) ;
 struct jffs2_inode_cache* jffs2_get_ino_cache (struct jffs2_sb_info*,int) ;
 struct inode* jffs2_iget (int ,int) ;
 int pr_notice (char*,int,int) ;
 int sleep_on_spinunlock (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct jffs2_inode_info *jffs2_gc_fetch_inode(struct jffs2_sb_info *c,
           int inum, int unlinked)
{
 struct inode *inode;
 struct jffs2_inode_cache *ic;

 if (unlinked) {
  inode = ilookup(OFNI_BS_2SFFJ(c), inum);
  if (!inode) {
   jffs2_dbg(1, "ilookup() failed for ino #%u; inode is probably deleted.\n",
      inum);

   spin_lock(&c->inocache_lock);
   ic = jffs2_get_ino_cache(c, inum);
   if (!ic) {
    jffs2_dbg(1, "Inode cache for ino #%u is gone\n",
       inum);
    spin_unlock(&c->inocache_lock);
    return ((void*)0);
   }
   if (ic->state != INO_STATE_CHECKEDABSENT) {

    jffs2_dbg(1, "Waiting for ino #%u in state %d\n",
       ic->ino, ic->state);
    sleep_on_spinunlock(&c->inocache_wq, &c->inocache_lock);
   } else {
    spin_unlock(&c->inocache_lock);
   }

   return ((void*)0);
  }
 } else {




  inode = jffs2_iget(OFNI_BS_2SFFJ(c), inum);
  if (IS_ERR(inode))
   return ERR_CAST(inode);
 }
 if (is_bad_inode(inode)) {
  pr_notice("Eep. read_inode() failed for ino #%u. unlinked %d\n",
     inum, unlinked);

  iput(inode);
  return ERR_PTR(-EIO);
 }

 return JFFS2_INODE_INFO(inode);
}
