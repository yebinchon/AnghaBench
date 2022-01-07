
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
struct tcphdr {int doff; } ;
struct sk_buff {int dummy; } ;
struct ip_ct_tcp_state {scalar_t__ flags; scalar_t__ td_scale; } ;


 int BUG_ON (int ) ;
 scalar_t__ IP_CT_TCP_FLAG_SACK_PERM ;
 scalar_t__ IP_CT_TCP_FLAG_WINDOW_SCALE ;
 int TCPOLEN_SACK_PERM ;
 int TCPOLEN_WINDOW ;


 int TCPOPT_SACK_PERM ;
 int TCPOPT_WINDOW ;
 scalar_t__ TCP_MAX_WSCALE ;
 unsigned char* skb_header_pointer (struct sk_buff const*,unsigned int,int,unsigned char*) ;

__attribute__((used)) static void tcp_options(const struct sk_buff *skb,
   unsigned int dataoff,
   const struct tcphdr *tcph,
   struct ip_ct_tcp_state *state)
{
 unsigned char buff[(15 * 4) - sizeof(struct tcphdr)];
 const unsigned char *ptr;
 int length = (tcph->doff*4) - sizeof(struct tcphdr);

 if (!length)
  return;

 ptr = skb_header_pointer(skb, dataoff + sizeof(struct tcphdr),
     length, buff);
 BUG_ON(ptr == ((void*)0));

 state->td_scale =
 state->flags = 0;

 while (length > 0) {
  int opcode=*ptr++;
  int opsize;

  switch (opcode) {
  case 129:
   return;
  case 128:
   length--;
   continue;
  default:
   if (length < 2)
    return;
   opsize=*ptr++;
   if (opsize < 2)
    return;
   if (opsize > length)
    return;

   if (opcode == TCPOPT_SACK_PERM
       && opsize == TCPOLEN_SACK_PERM)
    state->flags |= IP_CT_TCP_FLAG_SACK_PERM;
   else if (opcode == TCPOPT_WINDOW
     && opsize == TCPOLEN_WINDOW) {
    state->td_scale = *(u_int8_t *)ptr;

    if (state->td_scale > TCP_MAX_WSCALE)
     state->td_scale = TCP_MAX_WSCALE;

    state->flags |=
     IP_CT_TCP_FLAG_WINDOW_SCALE;
   }
   ptr += opsize - 2;
   length -= opsize;
  }
 }
}
