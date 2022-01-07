
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tcphdr {int doff; } ;


 int TCPOLEN_MSS ;

 int TCPOPT_MSS ;

 int get_unaligned_be16 (unsigned char const*) ;

__attribute__((used)) static u16 tcp_parse_mss_option(const struct tcphdr *th, u16 user_mss)
{
 const unsigned char *ptr = (const unsigned char *)(th + 1);
 int length = (th->doff * 4) - sizeof(struct tcphdr);
 u16 mss = 0;

 while (length > 0) {
  int opcode = *ptr++;
  int opsize;

  switch (opcode) {
  case 129:
   return mss;
  case 128:
   length--;
   continue;
  default:
   if (length < 2)
    return mss;
   opsize = *ptr++;
   if (opsize < 2)
    return mss;
   if (opsize > length)
    return mss;
   if (opcode == TCPOPT_MSS && opsize == TCPOLEN_MSS) {
    u16 in_mss = get_unaligned_be16(ptr);

    if (in_mss) {
     if (user_mss && user_mss < in_mss)
      in_mss = user_mss;
     mss = in_mss;
    }
   }
   ptr += opsize - 2;
   length -= opsize;
  }
 }
 return mss;
}
