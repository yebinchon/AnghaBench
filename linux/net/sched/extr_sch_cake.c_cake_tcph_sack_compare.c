
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcphdr {int ack_seq; } ;
struct tcp_sack_block_wire {int end_seq; int start_seq; } ;


 scalar_t__ TCPOLEN_SACK_BASE ;
 int TCPOPT_SACK ;
 int after (scalar_t__,scalar_t__) ;
 scalar_t__ before (scalar_t__,scalar_t__) ;
 struct tcp_sack_block_wire* cake_get_tcpopt (struct tcphdr const*,int ,int*) ;
 scalar_t__ get_unaligned_be32 (int *) ;
 scalar_t__ ntohl (int ) ;

__attribute__((used)) static int cake_tcph_sack_compare(const struct tcphdr *tcph_a,
      const struct tcphdr *tcph_b)
{
 const struct tcp_sack_block_wire *sack_a, *sack_b;
 u32 ack_seq_a = ntohl(tcph_a->ack_seq);
 u32 bytes_a = 0, bytes_b = 0;
 int oplen_a, oplen_b;
 bool first = 1;

 sack_a = cake_get_tcpopt(tcph_a, TCPOPT_SACK, &oplen_a);
 sack_b = cake_get_tcpopt(tcph_b, TCPOPT_SACK, &oplen_b);


 oplen_a -= TCPOLEN_SACK_BASE;
 oplen_b -= TCPOLEN_SACK_BASE;

 if (sack_a && oplen_a >= sizeof(*sack_a) &&
     (!sack_b || oplen_b < sizeof(*sack_b)))
  return -1;
 else if (sack_b && oplen_b >= sizeof(*sack_b) &&
   (!sack_a || oplen_a < sizeof(*sack_a)))
  return 1;
 else if ((!sack_a || oplen_a < sizeof(*sack_a)) &&
   (!sack_b || oplen_b < sizeof(*sack_b)))
  return 0;

 while (oplen_a >= sizeof(*sack_a)) {
  const struct tcp_sack_block_wire *sack_tmp = sack_b;
  u32 start_a = get_unaligned_be32(&sack_a->start_seq);
  u32 end_a = get_unaligned_be32(&sack_a->end_seq);
  int oplen_tmp = oplen_b;
  bool found = 0;


  if (before(start_a, ack_seq_a))
   return -1;

  bytes_a += end_a - start_a;

  while (oplen_tmp >= sizeof(*sack_tmp)) {
   u32 start_b = get_unaligned_be32(&sack_tmp->start_seq);
   u32 end_b = get_unaligned_be32(&sack_tmp->end_seq);


   if (first)
    bytes_b += end_b - start_b;

   if (!after(start_b, start_a) && !before(end_b, end_a)) {
    found = 1;
    if (!first)
     break;
   }
   oplen_tmp -= sizeof(*sack_tmp);
   sack_tmp++;
  }

  if (!found)
   return -1;

  oplen_a -= sizeof(*sack_a);
  sack_a++;
  first = 0;
 }




 return bytes_b > bytes_a ? 1 : 0;
}
