
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PF_INET6 ;
 int cfg_encap_proto ;
 int cfg_l3_extra ;
 scalar_t__ cfg_l3_inner ;
 scalar_t__ cfg_l3_outer ;
 int extra_daddr4 ;
 int extra_daddr6 ;
 int extra_saddr4 ;
 int extra_saddr6 ;
 int fprintf (int ,char*,int) ;
 int in_daddr4 ;
 int in_daddr6 ;
 int in_saddr4 ;
 int in_saddr6 ;
 int out_daddr4 ;
 int out_daddr6 ;
 int out_saddr4 ;
 int out_saddr6 ;
 int stderr ;
 int util_printaddr (char*,void*) ;

__attribute__((used)) static void print_opts(void)
{
 if (cfg_l3_inner == PF_INET6) {
  util_printaddr("inner.dest6", (void *) &in_daddr6);
  util_printaddr("inner.source6", (void *) &in_saddr6);
 } else {
  util_printaddr("inner.dest4", (void *) &in_daddr4);
  util_printaddr("inner.source4", (void *) &in_saddr4);
 }

 if (!cfg_l3_outer)
  return;

 fprintf(stderr, "encap proto:   %u\n", cfg_encap_proto);

 if (cfg_l3_outer == PF_INET6) {
  util_printaddr("outer.dest6", (void *) &out_daddr6);
  util_printaddr("outer.source6", (void *) &out_saddr6);
 } else {
  util_printaddr("outer.dest4", (void *) &out_daddr4);
  util_printaddr("outer.source4", (void *) &out_saddr4);
 }

 if (!cfg_l3_extra)
  return;

 if (cfg_l3_outer == PF_INET6) {
  util_printaddr("extra.dest6", (void *) &extra_daddr6);
  util_printaddr("extra.source6", (void *) &extra_saddr6);
 } else {
  util_printaddr("extra.dest4", (void *) &extra_daddr4);
  util_printaddr("extra.source4", (void *) &extra_saddr4);
 }

}
