
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jffs2_sb_info {int dummy; } ;
struct jffs2_node_frag {TYPE_1__* node; } ;
struct TYPE_2__ {int raw; int frags; scalar_t__ size; scalar_t__ ofs; } ;


 int dbg_fragtree2 (char*,int ,scalar_t__,scalar_t__,...) ;
 int jffs2_free_full_dnode (TYPE_1__*) ;
 int jffs2_free_node_frag (struct jffs2_node_frag*) ;
 int jffs2_mark_node_obsolete (struct jffs2_sb_info*,int ) ;
 int mark_ref_normal (int ) ;
 int ref_offset (int ) ;

__attribute__((used)) static void jffs2_obsolete_node_frag(struct jffs2_sb_info *c,
         struct jffs2_node_frag *this)
{
 if (this->node) {
  this->node->frags--;
  if (!this->node->frags) {

   dbg_fragtree2("marking old node @0x%08x (0x%04x-0x%04x) obsolete\n",
    ref_offset(this->node->raw), this->node->ofs, this->node->ofs+this->node->size);
   jffs2_mark_node_obsolete(c, this->node->raw);
   jffs2_free_full_dnode(this->node);
  } else {
   dbg_fragtree2("marking old node @0x%08x (0x%04x-0x%04x) REF_NORMAL. frags is %d\n",
    ref_offset(this->node->raw), this->node->ofs, this->node->ofs+this->node->size, this->node->frags);
   mark_ref_normal(this->node->raw);
  }

 }
 jffs2_free_node_frag(this);
}
