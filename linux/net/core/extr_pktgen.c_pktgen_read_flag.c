
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t __u32 ;


 int CONFIG_XFRM ;
 size_t F_FLOW_SEQ ;
 size_t IPSEC_SHIFT ;
 size_t IPV6_SHIFT ;
 int IS_ENABLED (int ) ;
 size_t NR_PKT_FLAGS ;
 char** pkt_flag_names ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static __u32 pktgen_read_flag(const char *f, bool *disable)
{
 __u32 i;

 if (f[0] == '!') {
  *disable = 1;
  f++;
 }

 for (i = 0; i < NR_PKT_FLAGS; i++) {
  if (!IS_ENABLED(CONFIG_XFRM) && i == IPSEC_SHIFT)
   continue;


  if (!*disable && i == IPV6_SHIFT)
   continue;

  if (strcmp(f, pkt_flag_names[i]) == 0)
   return 1 << i;
 }

 if (strcmp(f, "FLOW_RND") == 0) {
  *disable = !*disable;
  return F_FLOW_SEQ;
 }

 return 0;
}
