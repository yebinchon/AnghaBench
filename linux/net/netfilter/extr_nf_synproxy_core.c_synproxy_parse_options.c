
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tcphdr {int doff; } ;
struct synproxy_options {scalar_t__ options; void* tsecr; void* tsval; int wscale; int mss_option; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ NF_SYNPROXY_OPT_MSS ;
 scalar_t__ NF_SYNPROXY_OPT_SACK_PERM ;
 scalar_t__ NF_SYNPROXY_OPT_TIMESTAMP ;
 scalar_t__ NF_SYNPROXY_OPT_WSCALE ;
 int TCPOLEN_MSS ;
 int TCPOLEN_SACK_PERM ;
 int TCPOLEN_TIMESTAMP ;
 int TCPOLEN_WINDOW ;






 int TCP_MAX_WSCALE ;
 int get_unaligned_be16 (int *) ;
 void* get_unaligned_be32 (int *) ;
 int * skb_header_pointer (struct sk_buff const*,unsigned int,int,int *) ;

bool
synproxy_parse_options(const struct sk_buff *skb, unsigned int doff,
         const struct tcphdr *th, struct synproxy_options *opts)
{
 int length = (th->doff * 4) - sizeof(*th);
 u8 buf[40], *ptr;

 ptr = skb_header_pointer(skb, doff + sizeof(*th), length, buf);
 if (ptr == ((void*)0))
  return 0;

 opts->options = 0;
 while (length > 0) {
  int opcode = *ptr++;
  int opsize;

  switch (opcode) {
  case 133:
   return 1;
  case 131:
   length--;
   continue;
  default:
   opsize = *ptr++;
   if (opsize < 2)
    return 1;
   if (opsize > length)
    return 1;

   switch (opcode) {
   case 132:
    if (opsize == TCPOLEN_MSS) {
     opts->mss_option = get_unaligned_be16(ptr);
     opts->options |= NF_SYNPROXY_OPT_MSS;
    }
    break;
   case 128:
    if (opsize == TCPOLEN_WINDOW) {
     opts->wscale = *ptr;
     if (opts->wscale > TCP_MAX_WSCALE)
      opts->wscale = TCP_MAX_WSCALE;
     opts->options |= NF_SYNPROXY_OPT_WSCALE;
    }
    break;
   case 129:
    if (opsize == TCPOLEN_TIMESTAMP) {
     opts->tsval = get_unaligned_be32(ptr);
     opts->tsecr = get_unaligned_be32(ptr + 4);
     opts->options |= NF_SYNPROXY_OPT_TIMESTAMP;
    }
    break;
   case 130:
    if (opsize == TCPOLEN_SACK_PERM)
     opts->options |= NF_SYNPROXY_OPT_SACK_PERM;
    break;
   }

   ptr += opsize - 2;
   length -= opsize;
  }
 }
 return 1;
}
