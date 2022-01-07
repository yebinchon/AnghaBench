
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt_inherit {int val; } ;
struct bpf_sockopt {scalar_t__ level; int optlen; scalar_t__ retval; int * optval; int * optval_end; } ;
typedef int __u8 ;


 scalar_t__ SOL_CUSTOM ;
 struct sockopt_inherit* get_storage (struct bpf_sockopt*) ;

int _getsockopt(struct bpf_sockopt *ctx)
{
 __u8 *optval_end = ctx->optval_end;
 struct sockopt_inherit *storage;
 __u8 *optval = ctx->optval;

 if (ctx->level != SOL_CUSTOM)
  return 1;

 if (optval + 1 > optval_end)
  return 0;

 storage = get_storage(ctx);
 if (!storage)
  return 0;

 ctx->retval = 0;

 optval[0] = storage->val;
 ctx->optlen = 1;

 return 1;
}
