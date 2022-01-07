
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct jffs2_sb_info {size_t sector_size; struct jffs2_eraseblock* blocks; } ;
struct jffs2_raw_node_ref {size_t flash_offset; } ;
struct jffs2_eraseblock {scalar_t__ free_size; scalar_t__ offset; struct jffs2_raw_node_ref* last_node; } ;


 int BUG () ;
 int pr_crit (char*,struct jffs2_raw_node_ref*,scalar_t__,struct jffs2_raw_node_ref*,scalar_t__) ;
 struct jffs2_raw_node_ref* ref_next (struct jffs2_raw_node_ref*) ;
 scalar_t__ ref_offset (struct jffs2_raw_node_ref*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline uint32_t __ref_totlen(struct jffs2_sb_info *c,
        struct jffs2_eraseblock *jeb,
        struct jffs2_raw_node_ref *ref)
{
 uint32_t ref_end;
 struct jffs2_raw_node_ref *next_ref = ref_next(ref);

 if (next_ref)
  ref_end = ref_offset(next_ref);
 else {
  if (!jeb)
   jeb = &c->blocks[ref->flash_offset / c->sector_size];


  if (unlikely(ref != jeb->last_node)) {
   pr_crit("ref %p @0x%08x is not jeb->last_node (%p @0x%08x)\n",
    ref, ref_offset(ref), jeb->last_node,
    jeb->last_node ?
    ref_offset(jeb->last_node) : 0);
   BUG();
  }
  ref_end = jeb->offset + c->sector_size - jeb->free_size;
 }
 return ref_end - ref_offset(ref);
}
