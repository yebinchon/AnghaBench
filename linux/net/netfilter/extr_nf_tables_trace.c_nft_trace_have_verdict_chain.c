
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nft_traceinfo {int type; TYPE_1__* verdict; } ;
struct TYPE_2__ {int code; } ;







__attribute__((used)) static bool nft_trace_have_verdict_chain(struct nft_traceinfo *info)
{
 switch (info->type) {
 case 129:
 case 128:
  break;
 default:
  return 0;
 }

 switch (info->verdict->code) {
 case 130:
 case 131:
  break;
 default:
  return 0;
 }

 return 1;
}
