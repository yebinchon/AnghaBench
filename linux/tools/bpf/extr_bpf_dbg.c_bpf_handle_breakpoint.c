
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct sock_filter {int dummy; } ;
struct bpf_regs {size_t Pc; } ;


 int bpf_dump_curr (struct bpf_regs*,struct sock_filter*) ;
 int bpf_dump_pkt (int *,int ,int ) ;
 int rl_printf (char*) ;

__attribute__((used)) static bool bpf_handle_breakpoint(struct bpf_regs *r, struct sock_filter *f,
      uint8_t *pkt, uint32_t pkt_caplen,
      uint32_t pkt_len)
{
 rl_printf("-- register dump --\n");
 bpf_dump_curr(r, &f[r->Pc]);
 rl_printf("-- packet dump --\n");
 bpf_dump_pkt(pkt, pkt_caplen, pkt_len);
 rl_printf("(breakpoint)\n");
 return 1;
}
