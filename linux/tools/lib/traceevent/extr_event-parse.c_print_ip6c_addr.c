
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zerolength ;
typedef int uint8_t ;
typedef int uint16_t ;
struct trace_seq {int dummy; } ;
struct in6_addr {scalar_t__* s6_addr16; int * s6_addr; } ;


 scalar_t__ ipv6_addr_is_isatap (struct in6_addr*) ;
 scalar_t__ ipv6_addr_v4mapped (struct in6_addr*) ;
 int memcpy (struct in6_addr*,unsigned char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int ntohs (scalar_t__) ;
 int print_ip4_addr (struct trace_seq*,char,int *) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

__attribute__((used)) static void print_ip6c_addr(struct trace_seq *s, unsigned char *addr)
{
 int i, j, range;
 unsigned char zerolength[8];
 int longest = 1;
 int colonpos = -1;
 uint16_t word;
 uint8_t hi, lo;
 bool needcolon = 0;
 bool useIPv4;
 struct in6_addr in6;

 memcpy(&in6, addr, sizeof(struct in6_addr));

 useIPv4 = ipv6_addr_v4mapped(&in6) || ipv6_addr_is_isatap(&in6);

 memset(zerolength, 0, sizeof(zerolength));

 if (useIPv4)
  range = 6;
 else
  range = 8;


 for (i = 0; i < range; i++) {
  for (j = i; j < range; j++) {
   if (in6.s6_addr16[j] != 0)
    break;
   zerolength[i]++;
  }
 }
 for (i = 0; i < range; i++) {
  if (zerolength[i] > longest) {
   longest = zerolength[i];
   colonpos = i;
  }
 }
 if (longest == 1)
  colonpos = -1;


 for (i = 0; i < range; i++) {
  if (i == colonpos) {
   if (needcolon || i == 0)
    trace_seq_printf(s, ":");
   trace_seq_printf(s, ":");
   needcolon = 0;
   i += longest - 1;
   continue;
  }
  if (needcolon) {
   trace_seq_printf(s, ":");
   needcolon = 0;
  }

  word = ntohs(in6.s6_addr16[i]);
  hi = word >> 8;
  lo = word & 0xff;
  if (hi)
   trace_seq_printf(s, "%x%02x", hi, lo);
  else
   trace_seq_printf(s, "%x", lo);

  needcolon = 1;
 }

 if (useIPv4) {
  if (needcolon)
   trace_seq_printf(s, ":");
  print_ip4_addr(s, 'I', &in6.s6_addr[12]);
 }

 return;
}
