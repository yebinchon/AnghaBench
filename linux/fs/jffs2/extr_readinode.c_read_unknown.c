
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_unknown_node {int nodetype; int hdr_crc; int totlen; int magic; } ;
struct jffs2_sb_info {int flags; } ;
struct jffs2_raw_node_ref {int dummy; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int JFFS2_COMPAT_MASK ;
 int JFFS2_ERROR (char*,int,...) ;




 int JFFS2_NODE_ACCURATE ;
 int JFFS2_NOTICE (char*,int,int ) ;
 int JFFS2_SB_FLAG_RO ;
 scalar_t__ REF_UNCHECKED ;
 int cpu_to_je16 (int) ;
 int je16_to_cpu (int ) ;
 int je32_to_cpu (int ) ;
 int jffs2_mark_node_obsolete (struct jffs2_sb_info*,struct jffs2_raw_node_ref*) ;
 scalar_t__ ref_flags (struct jffs2_raw_node_ref*) ;
 int ref_offset (struct jffs2_raw_node_ref*) ;

__attribute__((used)) static inline int read_unknown(struct jffs2_sb_info *c, struct jffs2_raw_node_ref *ref, struct jffs2_unknown_node *un)
{

 if (ref_flags(ref) == REF_UNCHECKED) {
  JFFS2_ERROR("REF_UNCHECKED but unknown node at %#08x\n",
       ref_offset(ref));
  JFFS2_ERROR("Node is {%04x,%04x,%08x,%08x}. Please report this error.\n",
       je16_to_cpu(un->magic), je16_to_cpu(un->nodetype),
       je32_to_cpu(un->totlen), je32_to_cpu(un->hdr_crc));
  jffs2_mark_node_obsolete(c, ref);
  return 0;
 }

 un->nodetype = cpu_to_je16(JFFS2_NODE_ACCURATE | je16_to_cpu(un->nodetype));

 switch(je16_to_cpu(un->nodetype) & JFFS2_COMPAT_MASK) {

 case 131:
  JFFS2_ERROR("unknown INCOMPAT nodetype %#04X at %#08x\n",
       je16_to_cpu(un->nodetype), ref_offset(ref));

  BUG();
  break;

 case 130:
  JFFS2_ERROR("unknown ROCOMPAT nodetype %#04X at %#08x\n",
       je16_to_cpu(un->nodetype), ref_offset(ref));
  BUG_ON(!(c->flags & JFFS2_SB_FLAG_RO));
  break;

 case 129:
  JFFS2_NOTICE("unknown RWCOMPAT_COPY nodetype %#04X at %#08x\n",
        je16_to_cpu(un->nodetype), ref_offset(ref));
  break;

 case 128:
  JFFS2_NOTICE("unknown RWCOMPAT_DELETE nodetype %#04X at %#08x\n",
        je16_to_cpu(un->nodetype), ref_offset(ref));
  jffs2_mark_node_obsolete(c, ref);
  return 0;
 }

 return 0;
}
