
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;


 int PTR_TO_SOCKET ;
 int PTR_TO_SOCK_COMMON ;
 int PTR_TO_TCP_SOCK ;
 int PTR_TO_XDP_SOCK ;

__attribute__((used)) static bool type_is_sk_pointer(enum bpf_reg_type type)
{
 return type == PTR_TO_SOCKET ||
  type == PTR_TO_SOCK_COMMON ||
  type == PTR_TO_TCP_SOCK ||
  type == PTR_TO_XDP_SOCK;
}
