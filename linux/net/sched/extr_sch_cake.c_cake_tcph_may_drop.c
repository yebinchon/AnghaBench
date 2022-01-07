
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tcphdr {int dummy; } ;


 int TCPOLEN_TIMESTAMP ;
 int TCPOPT_EOL ;




 int TCPOPT_NOP ;




 int TCP_FLAG_ACK ;
 int __tcp_hdrlen (struct tcphdr const*) ;
 int after (int ,int ) ;
 int cpu_to_be32 (int) ;
 int get_unaligned_be32 (int const*) ;
 int tcp_flag_word (struct tcphdr const*) ;

__attribute__((used)) static bool cake_tcph_may_drop(const struct tcphdr *tcph,
          u32 tstamp_new, u32 tsecr_new)
{

 int length = __tcp_hdrlen(tcph) - sizeof(struct tcphdr);
 const u8 *ptr = (const u8 *)(tcph + 1);
 u32 tstamp, tsecr;
 if (((tcp_flag_word(tcph) &
       cpu_to_be32(0x0F3F0000)) != TCP_FLAG_ACK))
  return 0;

 while (length > 0) {
  int opcode = *ptr++;
  int opsize;

  if (opcode == TCPOPT_EOL)
   break;
  if (opcode == TCPOPT_NOP) {
   length--;
   continue;
  }
  opsize = *ptr++;
  if (opsize < 2 || opsize > length)
   break;

  switch (opcode) {
  case 133:
   break;

  case 131:
   if (opsize % 8 != 2)
    return 0;
   break;

  case 129:

   if (opsize != TCPOLEN_TIMESTAMP)
    return 0;
   tstamp = get_unaligned_be32(ptr);
   tsecr = get_unaligned_be32(ptr + 4);
   if (after(tstamp, tstamp_new) ||
       after(tsecr, tsecr_new))
    return 0;
   break;

  case 132:
  case 128:
  case 130:
  case 134:
  case 135:
  default:
   return 0;
  }

  ptr += opsize - 2;
  length -= opsize;
 }

 return 1;
}
