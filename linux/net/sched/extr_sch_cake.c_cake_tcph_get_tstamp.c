
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tcphdr {int dummy; } ;


 int TCPOLEN_TIMESTAMP ;
 int TCPOPT_TIMESTAMP ;
 int * cake_get_tcpopt (struct tcphdr const*,int ,int*) ;
 int get_unaligned_be32 (int const*) ;

__attribute__((used)) static void cake_tcph_get_tstamp(const struct tcphdr *tcph,
     u32 *tsval, u32 *tsecr)
{
 const u8 *ptr;
 int opsize;

 ptr = cake_get_tcpopt(tcph, TCPOPT_TIMESTAMP, &opsize);

 if (ptr && opsize == TCPOLEN_TIMESTAMP) {
  *tsval = get_unaligned_be32(ptr);
  *tsecr = get_unaligned_be32(ptr + 4);
 }
}
