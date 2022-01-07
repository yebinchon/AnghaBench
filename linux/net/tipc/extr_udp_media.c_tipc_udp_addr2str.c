
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_media_addr {int port; int ipv6; int proto; int ipv4; } ;
struct tipc_media_addr {int value; } ;


 scalar_t__ ETH_P_IP ;
 scalar_t__ ETH_P_IPV6 ;
 int ntohs (int ) ;
 int pr_err (char*) ;
 int snprintf (char*,int,char*,int *,int) ;

__attribute__((used)) static int tipc_udp_addr2str(struct tipc_media_addr *a, char *buf, int size)
{
 struct udp_media_addr *ua = (struct udp_media_addr *)&a->value;

 if (ntohs(ua->proto) == ETH_P_IP)
  snprintf(buf, size, "%pI4:%u", &ua->ipv4, ntohs(ua->port));
 else if (ntohs(ua->proto) == ETH_P_IPV6)
  snprintf(buf, size, "%pI6:%u", &ua->ipv6, ntohs(ua->port));
 else
  pr_err("Invalid UDP media address\n");
 return 0;
}
