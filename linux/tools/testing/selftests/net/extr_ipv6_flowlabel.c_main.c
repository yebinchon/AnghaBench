
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; int sin6_port; int sin6_family; } ;
typedef int one ;
typedef int addr ;


 int AF_INET6 ;
 int FLOWLABEL_WILDCARD ;
 int IN6ADDR_LOOPBACK_INIT ;
 int IPV6_FLOWINFO ;
 int IPV6_FL_F_CREATE ;
 int IPV6_FL_S_EXCL ;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int SOL_IPV6 ;
 scalar_t__ bind (int,void*,int) ;
 int cfg_label ;
 scalar_t__ close (int) ;
 scalar_t__ connect (int,void*,int) ;
 int do_recv (int,int,int ) ;
 int do_send (int,int,int ) ;
 int errno ;
 int error (int,int ,char*) ;
 int flowlabel_get (int,int ,int ,int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ get_autoflowlabel_enabled () ;
 int htons (int) ;
 int parse_opts (int,char**) ;
 scalar_t__ setsockopt (int,int ,int ,int const*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;

int main(int argc, char **argv)
{
 struct sockaddr_in6 addr = {
  .sin6_family = AF_INET6,
  .sin6_port = htons(8000),
  .sin6_addr = IN6ADDR_LOOPBACK_INIT,
 };
 const int one = 1;
 int fdt, fdr;

 parse_opts(argc, argv);

 fdt = socket(PF_INET6, SOCK_DGRAM, 0);
 if (fdt == -1)
  error(1, errno, "socket t");

 fdr = socket(PF_INET6, SOCK_DGRAM, 0);
 if (fdr == -1)
  error(1, errno, "socket r");

 if (connect(fdt, (void *)&addr, sizeof(addr)))
  error(1, errno, "connect");
 if (bind(fdr, (void *)&addr, sizeof(addr)))
  error(1, errno, "bind");

 flowlabel_get(fdt, cfg_label, IPV6_FL_S_EXCL, IPV6_FL_F_CREATE);

 if (setsockopt(fdr, SOL_IPV6, IPV6_FLOWINFO, &one, sizeof(one)))
  error(1, errno, "setsockopt flowinfo");

 if (get_autoflowlabel_enabled()) {
  fprintf(stderr, "send no label: recv auto flowlabel\n");
  do_send(fdt, 0, 0);
  do_recv(fdr, 1, FLOWLABEL_WILDCARD);
 } else {
  fprintf(stderr, "send no label: recv no label (auto off)\n");
  do_send(fdt, 0, 0);
  do_recv(fdr, 0, 0);
 }

 fprintf(stderr, "send label\n");
 do_send(fdt, 1, cfg_label);
 do_recv(fdr, 1, cfg_label);

 if (close(fdr))
  error(1, errno, "close r");
 if (close(fdt))
  error(1, errno, "close t");

 return 0;
}
