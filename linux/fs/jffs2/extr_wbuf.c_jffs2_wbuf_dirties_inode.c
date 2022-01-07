
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jffs2_sb_info {struct jffs2_inodirty* wbuf_inodes; } ;
struct jffs2_inodirty {struct jffs2_inodirty* next; int ino; } ;


 int GFP_KERNEL ;
 struct jffs2_inodirty inodirty_nomem ;
 int jffs2_clear_wbuf_ino_list (struct jffs2_sb_info*) ;
 int jffs2_dbg (int,char*) ;
 int jffs2_dirty_trigger (struct jffs2_sb_info*) ;
 scalar_t__ jffs2_wbuf_pending_for_ino (struct jffs2_sb_info*,int ) ;
 struct jffs2_inodirty* kmalloc (int,int ) ;

__attribute__((used)) static void jffs2_wbuf_dirties_inode(struct jffs2_sb_info *c, uint32_t ino)
{
 struct jffs2_inodirty *new;


 jffs2_dirty_trigger(c);

 if (jffs2_wbuf_pending_for_ino(c, ino))
  return;

 new = kmalloc(sizeof(*new), GFP_KERNEL);
 if (!new) {
  jffs2_dbg(1, "No memory to allocate inodirty. Fallback to all considered dirty\n");
  jffs2_clear_wbuf_ino_list(c);
  c->wbuf_inodes = &inodirty_nomem;
  return;
 }
 new->ino = ino;
 new->next = c->wbuf_inodes;
 c->wbuf_inodes = new;
 return;
}
