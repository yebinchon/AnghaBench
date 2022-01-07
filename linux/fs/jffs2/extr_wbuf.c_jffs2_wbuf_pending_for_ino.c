
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct jffs2_sb_info {struct jffs2_inodirty* wbuf_inodes; } ;
struct jffs2_inodirty {scalar_t__ ino; struct jffs2_inodirty* next; } ;


 struct jffs2_inodirty inodirty_nomem ;

__attribute__((used)) static int jffs2_wbuf_pending_for_ino(struct jffs2_sb_info *c, uint32_t ino)
{
 struct jffs2_inodirty *this = c->wbuf_inodes;


 if (this == &inodirty_nomem)
  return 1;


 if (this && !ino)
  return 1;


 while (this) {
  if (this->ino == ino)
   return 1;
  this = this->next;
 }
 return 0;
}
