
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_reg_type { ____Placeholder_bpf_reg_type } bpf_reg_type ;


 int PTR_TO_SOCKET ;
 int PTR_TO_SOCKET_OR_NULL ;
 int PTR_TO_TCP_SOCK ;
 int PTR_TO_TCP_SOCK_OR_NULL ;

__attribute__((used)) static bool reg_type_may_be_refcounted_or_null(enum bpf_reg_type type)
{
 return type == PTR_TO_SOCKET ||
  type == PTR_TO_SOCKET_OR_NULL ||
  type == PTR_TO_TCP_SOCK ||
  type == PTR_TO_TCP_SOCK_OR_NULL;
}
