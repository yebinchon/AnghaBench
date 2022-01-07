
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {int dummy; } ;
struct jffs2_raw_node_ref {scalar_t__ flash_offset; struct jffs2_raw_node_ref* next_in_ino; } ;
struct jffs2_eraseblock {int * last_node; struct jffs2_raw_node_ref* first_node; int offset; } ;


 scalar_t__ REF_EMPTY_NODE ;
 scalar_t__ REF_LINK_NODE ;
 int jffs2_dbg (int,char*,int ) ;
 int jffs2_free_refblock (struct jffs2_raw_node_ref*) ;
 int jffs2_remove_node_refs_from_ino_list (struct jffs2_sb_info*,struct jffs2_raw_node_ref*,struct jffs2_eraseblock*) ;

void jffs2_free_jeb_node_refs(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb)
{
 struct jffs2_raw_node_ref *block, *ref;
 jffs2_dbg(1, "Freeing all node refs for eraseblock offset 0x%08x\n",
    jeb->offset);

 block = ref = jeb->first_node;

 while (ref) {
  if (ref->flash_offset == REF_LINK_NODE) {
   ref = ref->next_in_ino;
   jffs2_free_refblock(block);
   block = ref;
   continue;
  }
  if (ref->flash_offset != REF_EMPTY_NODE && ref->next_in_ino)
   jffs2_remove_node_refs_from_ino_list(c, ref, jeb);


  ref++;
 }
 jeb->first_node = jeb->last_node = ((void*)0);
}
