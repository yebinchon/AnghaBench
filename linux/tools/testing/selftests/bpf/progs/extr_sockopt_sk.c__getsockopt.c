
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt_sk {int val; } ;
struct bpf_sockopt {scalar_t__ level; scalar_t__ optname; int optlen; scalar_t__ retval; int sk; int * optval; int * optval_end; } ;
typedef int __u8 ;


 int BPF_SK_STORAGE_GET_F_CREATE ;
 scalar_t__ IP_TOS ;
 scalar_t__ SOL_CUSTOM ;
 scalar_t__ SOL_IP ;
 scalar_t__ SOL_SOCKET ;
 scalar_t__ SOL_TCP ;
 scalar_t__ SO_SNDBUF ;
 scalar_t__ TCP_CONGESTION ;
 struct sockopt_sk* bpf_sk_storage_get (int *,int ,int ,int ) ;
 int socket_storage_map ;

int _getsockopt(struct bpf_sockopt *ctx)
{
 __u8 *optval_end = ctx->optval_end;
 __u8 *optval = ctx->optval;
 struct sockopt_sk *storage;

 if (ctx->level == SOL_IP && ctx->optname == IP_TOS)




  return 1;

 if (ctx->level == SOL_SOCKET && ctx->optname == SO_SNDBUF) {




  return 1;
 }

 if (ctx->level == SOL_TCP && ctx->optname == TCP_CONGESTION) {




  return 1;
 }

 if (ctx->level != SOL_CUSTOM)
  return 0;

 if (optval + 1 > optval_end)
  return 0;

 storage = bpf_sk_storage_get(&socket_storage_map, ctx->sk, 0,
         BPF_SK_STORAGE_GET_F_CREATE);
 if (!storage)
  return 0;

 if (!ctx->retval)
  return 0;


 ctx->retval = 0;

 optval[0] = storage->val;
 ctx->optlen = 1;

 return 1;
}
