
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum bpf_prog_type { ____Placeholder_bpf_prog_type } bpf_prog_type ;


 int BPF_PROG_TYPE_FLOW_DISSECTOR ;
 int BPF_PROG_TYPE_SOCKET_FILTER ;
 int test_signal_pending_by_type (int ) ;

void test_signal_pending(enum bpf_prog_type prog_type)
{
 test_signal_pending_by_type(BPF_PROG_TYPE_SOCKET_FILTER);
 test_signal_pending_by_type(BPF_PROG_TYPE_FLOW_DISSECTOR);
}
