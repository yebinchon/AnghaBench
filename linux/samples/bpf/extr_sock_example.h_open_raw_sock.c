
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ll {int sll_protocol; int sll_ifindex; int sll_family; } ;
struct sockaddr {int dummy; } ;
typedef int sll ;


 int AF_PACKET ;
 int ETH_P_ALL ;
 int PF_PACKET ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int SOCK_RAW ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 int htons (int ) ;
 int if_nametoindex (char const*) ;
 int memset (struct sockaddr_ll*,int ,int) ;
 int printf (char*,...) ;
 int socket (int ,int,int ) ;
 char* strerror (int ) ;

__attribute__((used)) static inline int open_raw_sock(const char *name)
{
 struct sockaddr_ll sll;
 int sock;

 sock = socket(PF_PACKET, SOCK_RAW | SOCK_NONBLOCK | SOCK_CLOEXEC, htons(ETH_P_ALL));
 if (sock < 0) {
  printf("cannot create raw socket\n");
  return -1;
 }

 memset(&sll, 0, sizeof(sll));
 sll.sll_family = AF_PACKET;
 sll.sll_ifindex = if_nametoindex(name);
 sll.sll_protocol = htons(ETH_P_ALL);
 if (bind(sock, (struct sockaddr *)&sll, sizeof(sll)) < 0) {
  printf("bind to %s: %s\n", name, strerror(errno));
  close(sock);
  return -1;
 }

 return sock;
}
