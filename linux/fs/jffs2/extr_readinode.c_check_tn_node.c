
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct jffs2_tmp_dnode_info {TYPE_1__* fn; } ;
struct jffs2_sb_info {int dummy; } ;
struct TYPE_2__ {int raw; scalar_t__ size; scalar_t__ ofs; } ;


 int BUG_ON (int ) ;
 int JFFS2_ERROR (char*,int) ;
 scalar_t__ REF_UNCHECKED ;
 int check_node_data (struct jffs2_sb_info*,struct jffs2_tmp_dnode_info*) ;
 int dbg_readinode (char*,...) ;
 int jffs2_mark_node_obsolete (struct jffs2_sb_info*,int ) ;
 scalar_t__ ref_flags (int ) ;
 int ref_obsolete (int ) ;
 int ref_offset (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int check_tn_node(struct jffs2_sb_info *c, struct jffs2_tmp_dnode_info *tn)
{
 int ret;

 BUG_ON(ref_obsolete(tn->fn->raw));


 if (ref_flags(tn->fn->raw) != REF_UNCHECKED)
  return 0;

 dbg_readinode("check node %#04x-%#04x, phys offs %#08x\n",
        tn->fn->ofs, tn->fn->ofs + tn->fn->size, ref_offset(tn->fn->raw));

 ret = check_node_data(c, tn);
 if (unlikely(ret < 0)) {
  JFFS2_ERROR("check_node_data() returned error: %d.\n",
   ret);
 } else if (unlikely(ret > 0)) {
  dbg_readinode("CRC error, mark it obsolete.\n");
  jffs2_mark_node_obsolete(c, tn->fn->raw);
 }

 return ret;
}
