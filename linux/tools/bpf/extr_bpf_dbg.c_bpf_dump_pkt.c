
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;


 int hex_dump (int *,scalar_t__) ;
 int rl_printf (char*,scalar_t__,...) ;

__attribute__((used)) static void bpf_dump_pkt(uint8_t *pkt, uint32_t pkt_caplen, uint32_t pkt_len)
{
 if (pkt_caplen != pkt_len)
  rl_printf("cap: %u, len: %u\n", pkt_caplen, pkt_len);
 else
  rl_printf("len: %u\n", pkt_len);

 hex_dump(pkt, pkt_caplen);
}
