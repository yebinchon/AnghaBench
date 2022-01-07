
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {size_t inocache_hashsize; int inocache_lock; struct jffs2_inode_cache** inocache_list; } ;
struct jffs2_inode_cache {size_t ino; scalar_t__ state; struct jffs2_inode_cache* next; int xref; } ;


 int BUG_ON (int ) ;
 scalar_t__ INO_STATE_CLEARING ;
 scalar_t__ INO_STATE_READING ;
 int dbg_inocache (char*,struct jffs2_inode_cache*,size_t) ;
 int jffs2_free_inode_cache (struct jffs2_inode_cache*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void jffs2_del_ino_cache(struct jffs2_sb_info *c, struct jffs2_inode_cache *old)
{
 struct jffs2_inode_cache **prev;




 dbg_inocache("del %p (ino #%u)\n", old, old->ino);
 spin_lock(&c->inocache_lock);

 prev = &c->inocache_list[old->ino % c->inocache_hashsize];

 while ((*prev) && (*prev)->ino < old->ino) {
  prev = &(*prev)->next;
 }
 if ((*prev) == old) {
  *prev = old->next;
 }






 if (old->state != INO_STATE_READING && old->state != INO_STATE_CLEARING)
  jffs2_free_inode_cache(old);

 spin_unlock(&c->inocache_lock);
}
