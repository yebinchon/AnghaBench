
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIGTERM ;
 scalar_t__ SIG_ERR ;
 int close (int ) ;
 int errno ;
 int error (int,int ,char*) ;
 int finish ;
 int getopt (int,char**,char*) ;
 int map_fd ;
 int maps_create () ;
 int print_table () ;
 int printf (char*,...) ;
 int prog_attach_iptables (char*) ;
 int prog_fd ;
 int prog_load () ;
 scalar_t__ signal (int ,int ) ;
 int sleep (int) ;
 int test_finish ;
 int udp_client () ;
 int usage () ;

int main(int argc, char *argv[])
{
 int opt;
 bool cfg_test_traffic = 0;
 bool cfg_test_cookie = 0;

 if (argc != 3)
  return usage();
 while ((opt = getopt(argc, argv, "ts")) != -1) {
  switch (opt) {
  case 't':
   cfg_test_traffic = 1;
   break;
  case 's':
   cfg_test_cookie = 1;
   break;

  default:
   printf("unknown option %c\n", opt);
   usage();
   return -1;
  }
 }
 maps_create();
 prog_load();
 prog_attach_iptables(argv[2]);
 if (cfg_test_traffic) {
  if (signal(SIGINT, finish) == SIG_ERR)
   error(1, errno, "register SIGINT handler failed");
  if (signal(SIGTERM, finish) == SIG_ERR)
   error(1, errno, "register SIGTERM handler failed");
  while (!test_finish) {
   print_table();
   printf("\n");
   sleep(1);
  };
 } else if (cfg_test_cookie) {
  udp_client();
 }
 close(prog_fd);
 close(map_fd);
 return 0;
}
