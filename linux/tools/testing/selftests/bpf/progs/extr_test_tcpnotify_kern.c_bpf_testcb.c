
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpnotify_globals {int ncalls; int total_retrans; } ;
struct tcp_notifier {int type; int subtype; int source; int hash; } ;
struct bpf_sock_ops {int reply; int total_retrans; int remote_port; scalar_t__ op; } ;
typedef int msg ;
typedef int __u32 ;


 int BPF_ANY ;
 int BPF_F_CURRENT_CPU ;





 int BPF_SOCK_OPS_RETRANS_CB_FLAG ;

 int BPF_SOCK_OPS_RTO_CB_FLAG ;




 scalar_t__ TESTPORT ;
 struct tcpnotify_globals* bpf_map_lookup_elem (int *,int *) ;
 int bpf_map_update_elem (int *,int *,struct tcpnotify_globals*,int ) ;
 scalar_t__ bpf_ntohl (int ) ;
 int bpf_perf_event_output (struct bpf_sock_ops*,int *,int ,struct tcp_notifier*,int) ;
 int bpf_sock_ops_cb_flags_set (struct bpf_sock_ops*,int) ;
 int global_map ;
 int perf_event_map ;

int bpf_testcb(struct bpf_sock_ops *skops)
{
 int rv = -1;
 int op;

 op = (int) skops->op;

 if (bpf_ntohl(skops->remote_port) != TESTPORT) {
  skops->reply = -1;
  return 0;
 }

 switch (op) {
 case 128:
 case 131:
 case 135:
 case 136:
 case 132:
  rv = 1;
  break;

 case 130:
 case 129:
 case 137:
 case 134:
  bpf_sock_ops_cb_flags_set(skops, (BPF_SOCK_OPS_RETRANS_CB_FLAG|
       BPF_SOCK_OPS_RTO_CB_FLAG));
  rv = 1;
  break;
 case 133: {
   __u32 key = 0;
   struct tcpnotify_globals g, *gp;
   struct tcp_notifier msg = {
    .type = 0xde,
    .subtype = 0xad,
    .source = 0xbe,
    .hash = 0xef,
   };

   rv = 1;


   gp = bpf_map_lookup_elem(&global_map, &key);
   if (!gp)
    break;
   g = *gp;
   g.total_retrans = skops->total_retrans;
   g.ncalls++;
   bpf_map_update_elem(&global_map, &key, &g,
         BPF_ANY);
   bpf_perf_event_output(skops, &perf_event_map,
           BPF_F_CURRENT_CPU,
           &msg, sizeof(msg));
  }
  break;
 default:
  rv = -1;
 }
 skops->reply = rv;
 return 1;
}
