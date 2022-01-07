
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_ch {int len; int sqnum; int group_type; int node_type; int crc; int magic; } ;


 int dbg_gtype (int ) ;
 int dbg_ntype (int ) ;
 unsigned long long le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int pr_err (char*,unsigned long long,...) ;

__attribute__((used)) static void dump_ch(const struct ubifs_ch *ch)
{
 pr_err("\tmagic          %#x\n", le32_to_cpu(ch->magic));
 pr_err("\tcrc            %#x\n", le32_to_cpu(ch->crc));
 pr_err("\tnode_type      %d (%s)\n", ch->node_type,
        dbg_ntype(ch->node_type));
 pr_err("\tgroup_type     %d (%s)\n", ch->group_type,
        dbg_gtype(ch->group_type));
 pr_err("\tsqnum          %llu\n",
        (unsigned long long)le64_to_cpu(ch->sqnum));
 pr_err("\tlen            %u\n", le32_to_cpu(ch->len));
}
