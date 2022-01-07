
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_cb_compound_hdr {scalar_t__ nops; int * nops_p; } ;


 int BUG_ON (int) ;
 scalar_t__ NFS4_MAX_BACK_CHANNEL_OPS ;
 int cpu_to_be32 (scalar_t__) ;

__attribute__((used)) static void encode_cb_nops(struct nfs4_cb_compound_hdr *hdr)
{
 BUG_ON(hdr->nops > NFS4_MAX_BACK_CHANNEL_OPS);
 *hdr->nops_p = cpu_to_be32(hdr->nops);
}
