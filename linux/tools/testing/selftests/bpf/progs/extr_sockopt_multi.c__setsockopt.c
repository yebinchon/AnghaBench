
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_sockopt {int* optval_end; int* optval; scalar_t__ level; scalar_t__ optname; int optlen; } ;
typedef int __u8 ;


 scalar_t__ IP_TOS ;
 scalar_t__ SOL_IP ;

int _setsockopt(struct bpf_sockopt *ctx)
{
 __u8 *optval_end = ctx->optval_end;
 __u8 *optval = ctx->optval;

 if (ctx->level != SOL_IP || ctx->optname != IP_TOS)
  return 1;

 if (optval + 1 > optval_end)
  return 0;

 optval[0] += 0x10;
 ctx->optlen = 1;

 return 1;
}
