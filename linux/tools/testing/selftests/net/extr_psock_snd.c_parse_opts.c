
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* cfg_payload_len ;
 void* cfg_truncate_len ;
 int cfg_use_bind ;
 int cfg_use_csum_off ;
 int cfg_use_csum_off_bad ;
 int cfg_use_dgram ;
 int cfg_use_gso ;
 int cfg_use_qdisc_bypass ;
 int cfg_use_vlan ;
 int cfg_use_vnet ;
 int error (int,int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 void* strtoul (int ,int *,int ) ;

__attribute__((used)) static void parse_opts(int argc, char **argv)
{
 int c;

 while ((c = getopt(argc, argv, "bcCdgl:qt:vV")) != -1) {
  switch (c) {
  case 'b':
   cfg_use_bind = 1;
   break;
  case 'c':
   cfg_use_csum_off = 1;
   break;
  case 'C':
   cfg_use_csum_off_bad = 1;
   break;
  case 'd':
   cfg_use_dgram = 1;
   break;
  case 'g':
   cfg_use_gso = 1;
   break;
  case 'l':
   cfg_payload_len = strtoul(optarg, ((void*)0), 0);
   break;
  case 'q':
   cfg_use_qdisc_bypass = 1;
   break;
  case 't':
   cfg_truncate_len = strtoul(optarg, ((void*)0), 0);
   break;
  case 'v':
   cfg_use_vnet = 1;
   break;
  case 'V':
   cfg_use_vlan = 1;
   break;
  default:
   error(1, 0, "%s: parse error", argv[0]);
  }
 }

 if (cfg_use_vlan && cfg_use_dgram)
  error(1, 0, "option vlan (-V) conflicts with dgram (-d)");

 if (cfg_use_csum_off && !cfg_use_vnet)
  error(1, 0, "option csum offload (-c) requires vnet (-v)");

 if (cfg_use_csum_off_bad && !cfg_use_csum_off)
  error(1, 0, "option csum bad (-C) requires csum offload (-c)");

 if (cfg_use_gso && !cfg_use_csum_off)
  error(1, 0, "option gso (-g) requires csum offload (-c)");
}
