
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int dirty_list; int very_dirty_list; int wasted_size; int dirty_size; } ;
struct jffs2_eraseblock {int list; int dirty_size; scalar_t__ wasted_size; int free_size; } ;


 scalar_t__ VERYDIRTY (struct jffs2_sb_info*,int ) ;
 int jffs2_prealloc_raw_node_refs (struct jffs2_sb_info*,struct jffs2_eraseblock*,int) ;
 int jffs2_scan_dirty_space (struct jffs2_sb_info*,struct jffs2_eraseblock*,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static int file_dirty(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb)
{
 int ret;

 if ((ret = jffs2_prealloc_raw_node_refs(c, jeb, 1)))
  return ret;
 if ((ret = jffs2_scan_dirty_space(c, jeb, jeb->free_size)))
  return ret;


 jeb->dirty_size += jeb->wasted_size;
 c->dirty_size += jeb->wasted_size;
 c->wasted_size -= jeb->wasted_size;
 jeb->wasted_size = 0;
 if (VERYDIRTY(c, jeb->dirty_size)) {
  list_add(&jeb->list, &c->very_dirty_list);
 } else {
  list_add(&jeb->list, &c->dirty_list);
 }
 return 0;
}
