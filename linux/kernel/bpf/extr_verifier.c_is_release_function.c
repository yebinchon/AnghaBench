
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_func_id { ____Placeholder_bpf_func_id } bpf_func_id ;


 int BPF_FUNC_sk_release ;

__attribute__((used)) static bool is_release_function(enum bpf_func_id func_id)
{
 return func_id == BPF_FUNC_sk_release;
}
