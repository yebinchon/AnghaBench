
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;


 int BPF_FUNC_sk_fullsock ;
 int BPF_FUNC_tcp_sock ;

__attribute__((used)) static bool is_ptr_cast_function(enum bpf_func_id func_id)
{
 return func_id == BPF_FUNC_tcp_sock ||
  func_id == BPF_FUNC_sk_fullsock;
}
