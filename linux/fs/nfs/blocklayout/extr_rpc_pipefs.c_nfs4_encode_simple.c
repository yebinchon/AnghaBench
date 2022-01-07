
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr_sigs; TYPE_1__* sigs; } ;
struct pnfs_block_volume {int type; TYPE_2__ simple; } ;
typedef int __be32 ;
struct TYPE_3__ {int sig_len; int sig; int offset; } ;


 void* cpu_to_be32 (int) ;
 int * xdr_encode_hyper (int *,int ) ;
 int * xdr_encode_opaque (int *,int ,int ) ;

__attribute__((used)) static void
nfs4_encode_simple(__be32 *p, struct pnfs_block_volume *b)
{
 int i;

 *p++ = cpu_to_be32(1);
 *p++ = cpu_to_be32(b->type);
 *p++ = cpu_to_be32(b->simple.nr_sigs);
 for (i = 0; i < b->simple.nr_sigs; i++) {
  p = xdr_encode_hyper(p, b->simple.sigs[i].offset);
  p = xdr_encode_opaque(p, b->simple.sigs[i].sig,
      b->simple.sigs[i].sig_len);
 }
}
