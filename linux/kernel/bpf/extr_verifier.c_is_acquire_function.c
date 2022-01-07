
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;


 int BPF_FUNC_sk_lookup_tcp ;
 int BPF_FUNC_sk_lookup_udp ;
 int BPF_FUNC_skc_lookup_tcp ;

__attribute__((used)) static bool is_acquire_function(enum bpf_func_id func_id)
{
 return func_id == BPF_FUNC_sk_lookup_tcp ||
  func_id == BPF_FUNC_sk_lookup_udp ||
  func_id == BPF_FUNC_skc_lookup_tcp;
}
