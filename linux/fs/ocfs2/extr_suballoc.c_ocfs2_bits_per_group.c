
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocfs2_chain_list {int cl_bpc; int cl_cpg; } ;


 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static u32 ocfs2_bits_per_group(struct ocfs2_chain_list *cl)
{
 return (u32)le16_to_cpu(cl->cl_cpg) * (u32)le16_to_cpu(cl->cl_bpc);
}
