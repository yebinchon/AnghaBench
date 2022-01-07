
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockopt_inherit {int dummy; } ;
struct bpf_sockopt {scalar_t__ optname; int sk; } ;


 int BPF_SK_STORAGE_GET_F_CREATE ;
 scalar_t__ CUSTOM_INHERIT1 ;
 scalar_t__ CUSTOM_INHERIT2 ;
 struct sockopt_inherit* bpf_sk_storage_get (int *,int ,int ,int ) ;
 int cloned1_map ;
 int cloned2_map ;
 int listener_only_map ;

__attribute__((used)) static __inline struct sockopt_inherit *get_storage(struct bpf_sockopt *ctx)
{
 if (ctx->optname == CUSTOM_INHERIT1)
  return bpf_sk_storage_get(&cloned1_map, ctx->sk, 0,
       BPF_SK_STORAGE_GET_F_CREATE);
 else if (ctx->optname == CUSTOM_INHERIT2)
  return bpf_sk_storage_get(&cloned2_map, ctx->sk, 0,
       BPF_SK_STORAGE_GET_F_CREATE);
 else
  return bpf_sk_storage_get(&listener_only_map, ctx->sk, 0,
       BPF_SK_STORAGE_GET_F_CREATE);
}
