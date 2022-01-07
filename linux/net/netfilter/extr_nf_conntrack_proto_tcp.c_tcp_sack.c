
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; } ;
struct sk_buff {int dummy; } ;
typedef int __u32 ;
typedef scalar_t__ __be32 ;


 int BUG_ON (int ) ;
 int TCPOLEN_SACK_BASE ;
 int TCPOLEN_SACK_PERBLOCK ;
 int TCPOLEN_TIMESTAMP ;
 int TCPOLEN_TSTAMP_ALIGNED ;


 int TCPOPT_SACK ;
 int TCPOPT_TIMESTAMP ;
 int after (int ,int ) ;
 int get_unaligned_be32 (scalar_t__*) ;
 scalar_t__ htonl (int) ;
 unsigned char* skb_header_pointer (struct sk_buff const*,unsigned int,int,unsigned char*) ;

__attribute__((used)) static void tcp_sack(const struct sk_buff *skb, unsigned int dataoff,
                     const struct tcphdr *tcph, __u32 *sack)
{
 unsigned char buff[(15 * 4) - sizeof(struct tcphdr)];
 const unsigned char *ptr;
 int length = (tcph->doff*4) - sizeof(struct tcphdr);
 __u32 tmp;

 if (!length)
  return;

 ptr = skb_header_pointer(skb, dataoff + sizeof(struct tcphdr),
     length, buff);
 BUG_ON(ptr == ((void*)0));


 if (length == TCPOLEN_TSTAMP_ALIGNED
     && *(__be32 *)ptr == htonl((128 << 24)
           | (128 << 16)
           | (TCPOPT_TIMESTAMP << 8)
           | TCPOLEN_TIMESTAMP))
  return;

 while (length > 0) {
  int opcode = *ptr++;
  int opsize, i;

  switch (opcode) {
  case 129:
   return;
  case 128:
   length--;
   continue;
  default:
   if (length < 2)
    return;
   opsize = *ptr++;
   if (opsize < 2)
    return;
   if (opsize > length)
    return;

   if (opcode == TCPOPT_SACK
       && opsize >= (TCPOLEN_SACK_BASE
       + TCPOLEN_SACK_PERBLOCK)
       && !((opsize - TCPOLEN_SACK_BASE)
     % TCPOLEN_SACK_PERBLOCK)) {
    for (i = 0;
         i < (opsize - TCPOLEN_SACK_BASE);
         i += TCPOLEN_SACK_PERBLOCK) {
     tmp = get_unaligned_be32((__be32 *)(ptr+i)+1);

     if (after(tmp, *sack))
      *sack = tmp;
    }
    return;
   }
   ptr += opsize - 2;
   length -= opsize;
  }
 }
}
