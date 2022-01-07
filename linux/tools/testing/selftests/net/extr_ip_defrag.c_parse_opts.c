
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg_do_ipv4 ;
 int cfg_do_ipv6 ;
 int cfg_overlap ;
 int cfg_permissive ;
 int cfg_verbose ;
 int error (int,int ,char*,char*) ;
 int getopt (int,char**,char*) ;

__attribute__((used)) static void parse_opts(int argc, char **argv)
{
 int c;

 while ((c = getopt(argc, argv, "46opv")) != -1) {
  switch (c) {
  case '4':
   cfg_do_ipv4 = 1;
   break;
  case '6':
   cfg_do_ipv6 = 1;
   break;
  case 'o':
   cfg_overlap = 1;
   break;
  case 'p':
   cfg_permissive = 1;
   break;
  case 'v':
   cfg_verbose = 1;
   break;
  default:
   error(1, 0, "%s: parse error", argv[0]);
  }
 }
}
