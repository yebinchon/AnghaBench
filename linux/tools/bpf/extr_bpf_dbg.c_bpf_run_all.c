
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct sock_filter {int dummy; } ;
struct TYPE_4__ {int Rs; size_t Pc; int R; } ;


 TYPE_1__ bpf_curr ;
 int bpf_handle_breakpoint (TYPE_1__*,struct sock_filter*,int *,int ,int ) ;
 scalar_t__ bpf_pc_has_breakpoint (size_t) ;
 int bpf_safe_regs () ;
 int bpf_single_step (TYPE_1__*,struct sock_filter*,int *,int ,int ) ;

__attribute__((used)) static int bpf_run_all(struct sock_filter *f, uint16_t bpf_len, uint8_t *pkt,
         uint32_t pkt_caplen, uint32_t pkt_len)
{
 bool stop = 0;

 while (bpf_curr.Rs == 0 && stop == 0) {
  bpf_safe_regs();

  if (bpf_pc_has_breakpoint(bpf_curr.Pc))
   stop = bpf_handle_breakpoint(&bpf_curr, f, pkt,
           pkt_caplen, pkt_len);

  bpf_single_step(&bpf_curr, &f[bpf_curr.Pc], pkt, pkt_caplen,
    pkt_len);
  bpf_curr.Pc++;
 }

 return stop ? -1 : bpf_curr.R;
}
