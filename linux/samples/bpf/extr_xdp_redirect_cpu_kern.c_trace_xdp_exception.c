
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_exception_ctx {int dummy; } ;
struct datarec {int dropped; } ;


 struct datarec* bpf_map_lookup_elem (int *,int *) ;
 int exception_cnt ;

int trace_xdp_exception(struct xdp_exception_ctx *ctx)
{
 struct datarec *rec;
 u32 key = 0;

 rec = bpf_map_lookup_elem(&exception_cnt, &key);
 if (!rec)
  return 1;
 rec->dropped += 1;

 return 0;
}
