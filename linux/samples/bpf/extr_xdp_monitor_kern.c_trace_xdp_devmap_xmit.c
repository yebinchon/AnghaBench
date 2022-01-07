
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct devmap_xmit_ctx {scalar_t__ drops; scalar_t__ err; scalar_t__ sent; } ;
struct datarec {int info; int err; int dropped; int processed; } ;


 struct datarec* bpf_map_lookup_elem (int *,int *) ;
 int devmap_xmit_cnt ;

int trace_xdp_devmap_xmit(struct devmap_xmit_ctx *ctx)
{
 struct datarec *rec;
 u32 key = 0;

 rec = bpf_map_lookup_elem(&devmap_xmit_cnt, &key);
 if (!rec)
  return 0;
 rec->processed += ctx->sent;
 rec->dropped += ctx->drops;


 rec->info += 1;


 if (ctx->err)
  rec->err++;


 if (ctx->drops < 0)
  rec->err++;

 return 1;
}
