
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compound_hdr {scalar_t__ nops; int * nops_p; } ;


 scalar_t__ NFS4_MAX_OPS ;
 int WARN_ON_ONCE (int) ;
 int htonl (scalar_t__) ;

__attribute__((used)) static void encode_nops(struct compound_hdr *hdr)
{
 WARN_ON_ONCE(hdr->nops > NFS4_MAX_OPS);
 *hdr->nops_p = htonl(hdr->nops);
}
