
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {size_t highest_ino; size_t inocache_hashsize; int inocache_lock; struct jffs2_inode_cache** inocache_list; } ;
struct jffs2_inode_cache {size_t ino; struct jffs2_inode_cache* next; } ;


 int dbg_inocache (char*,struct jffs2_inode_cache*,size_t) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void jffs2_add_ino_cache (struct jffs2_sb_info *c, struct jffs2_inode_cache *new)
{
 struct jffs2_inode_cache **prev;

 spin_lock(&c->inocache_lock);
 if (!new->ino)
  new->ino = ++c->highest_ino;

 dbg_inocache("add %p (ino #%u)\n", new, new->ino);

 prev = &c->inocache_list[new->ino % c->inocache_hashsize];

 while ((*prev) && (*prev)->ino < new->ino) {
  prev = &(*prev)->next;
 }
 new->next = *prev;
 *prev = new;

 spin_unlock(&c->inocache_lock);
}
