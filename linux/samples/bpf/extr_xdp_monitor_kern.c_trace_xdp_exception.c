
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct xdp_exception_ctx {scalar_t__ act; } ;


 scalar_t__ XDP_REDIRECT ;
 scalar_t__ XDP_UNKNOWN ;
 int* bpf_map_lookup_elem (int *,scalar_t__*) ;
 int exception_cnt ;

int trace_xdp_exception(struct xdp_exception_ctx *ctx)
{
 u64 *cnt;
 u32 key;

 key = ctx->act;
 if (key > XDP_REDIRECT)
  key = XDP_UNKNOWN;

 cnt = bpf_map_lookup_elem(&exception_cnt, &key);
 if (!cnt)
  return 1;
 *cnt += 1;

 return 0;
}
