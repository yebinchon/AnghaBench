
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bpf_program {int expected_attach_type; } ;
typedef enum bpf_attach_type { ____Placeholder_bpf_attach_type } bpf_attach_type ;



void bpf_program__set_expected_attach_type(struct bpf_program *prog,
        enum bpf_attach_type type)
{
 prog->expected_attach_type = type;
}
