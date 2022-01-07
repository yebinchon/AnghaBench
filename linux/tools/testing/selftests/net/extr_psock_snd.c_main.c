
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int error (int,int ,char*) ;
 int fprintf (int ,char*) ;
 int parse_opts (int,char**) ;
 int run_test () ;
 int stderr ;
 scalar_t__ system (char*) ;

int main(int argc, char **argv)
{
 parse_opts(argc, argv);

 if (system("ip link set dev lo mtu 1500"))
  error(1, errno, "ip link set mtu");
 if (system("ip addr add dev lo 172.17.0.1/24"))
  error(1, errno, "ip addr add");

 run_test();

 fprintf(stderr, "OK\n\n");
 return 0;
}
