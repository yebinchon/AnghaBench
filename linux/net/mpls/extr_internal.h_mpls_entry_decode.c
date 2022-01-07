
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpls_shim_hdr {int label_stack_entry; } ;
struct mpls_entry_decoded {unsigned int label; unsigned int ttl; unsigned int tc; unsigned int bos; } ;


 unsigned int MPLS_LS_LABEL_MASK ;
 unsigned int MPLS_LS_LABEL_SHIFT ;
 unsigned int MPLS_LS_S_MASK ;
 unsigned int MPLS_LS_S_SHIFT ;
 unsigned int MPLS_LS_TC_MASK ;
 unsigned int MPLS_LS_TC_SHIFT ;
 unsigned int MPLS_LS_TTL_MASK ;
 unsigned int MPLS_LS_TTL_SHIFT ;
 unsigned int be32_to_cpu (int ) ;

__attribute__((used)) static inline struct mpls_entry_decoded mpls_entry_decode(struct mpls_shim_hdr *hdr)
{
 struct mpls_entry_decoded result;
 unsigned entry = be32_to_cpu(hdr->label_stack_entry);

 result.label = (entry & MPLS_LS_LABEL_MASK) >> MPLS_LS_LABEL_SHIFT;
 result.ttl = (entry & MPLS_LS_TTL_MASK) >> MPLS_LS_TTL_SHIFT;
 result.tc = (entry & MPLS_LS_TC_MASK) >> MPLS_LS_TC_SHIFT;
 result.bos = (entry & MPLS_LS_S_MASK) >> MPLS_LS_S_SHIFT;

 return result;
}
