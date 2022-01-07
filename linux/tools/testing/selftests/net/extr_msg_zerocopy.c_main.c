
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_EGP ;
 int IPPROTO_RAW ;
 int PF_PACKET ;
 int PF_RDS ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOCK_SEQPACKET ;
 int SOCK_STREAM ;
 int cfg_family ;
 int do_test (int ,int ,int ) ;
 int error (int,int ,char*,char const*) ;
 int parse_opts (int,char**) ;
 int strcmp (char const*,char*) ;

int main(int argc, char **argv)
{
 const char *cfg_test;

 parse_opts(argc, argv);

 cfg_test = argv[argc - 1];

 if (!strcmp(cfg_test, "packet"))
  do_test(PF_PACKET, SOCK_RAW, 0);
 else if (!strcmp(cfg_test, "packet_dgram"))
  do_test(PF_PACKET, SOCK_DGRAM, 0);
 else if (!strcmp(cfg_test, "raw"))
  do_test(cfg_family, SOCK_RAW, IPPROTO_EGP);
 else if (!strcmp(cfg_test, "raw_hdrincl"))
  do_test(cfg_family, SOCK_RAW, IPPROTO_RAW);
 else if (!strcmp(cfg_test, "tcp"))
  do_test(cfg_family, SOCK_STREAM, 0);
 else if (!strcmp(cfg_test, "udp"))
  do_test(cfg_family, SOCK_DGRAM, 0);
 else if (!strcmp(cfg_test, "rds"))
  do_test(PF_RDS, SOCK_SEQPACKET, 0);
 else
  error(1, 0, "unknown cfg_test %s", cfg_test);

 return 0;
}
