
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u_int8_t ;
struct tcphdr {int dummy; } ;
struct sk_buff {int dummy; } ;


 int pr_debug (char*) ;
 int* skb_header_pointer (struct sk_buff const*,unsigned int,unsigned int,int const*) ;

__attribute__((used)) static bool
tcp_find_option(u_int8_t option,
  const struct sk_buff *skb,
  unsigned int protoff,
  unsigned int optlen,
  bool invert,
  bool *hotdrop)
{

 const u_int8_t *op;
 u_int8_t _opt[60 - sizeof(struct tcphdr)];
 unsigned int i;

 pr_debug("finding option\n");

 if (!optlen)
  return invert;


 op = skb_header_pointer(skb, protoff + sizeof(struct tcphdr),
    optlen, _opt);
 if (op == ((void*)0)) {
  *hotdrop = 1;
  return 0;
 }

 for (i = 0; i < optlen; ) {
  if (op[i] == option) return !invert;
  if (op[i] < 2) i++;
  else i += op[i+1]?:1;
 }

 return invert;
}
