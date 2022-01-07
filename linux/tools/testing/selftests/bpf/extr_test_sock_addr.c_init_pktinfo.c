
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_pktinfo {int ipi6_addr; int ipi_spec_dst; } ;
struct in6_pktinfo {int ipi6_addr; int ipi_spec_dst; } ;
struct cmsghdr {void* cmsg_len; int cmsg_type; int cmsg_level; } ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 void* CMSG_LEN (int) ;
 int IPV6_PKTINFO ;
 int IP_PKTINFO ;
 int SOL_IP ;
 int SOL_IPV6 ;
 int SRC4_IP ;
 int SRC6_IP ;
 int inet_pton (int,int ,void*) ;
 int memset (struct in_pktinfo*,int ,int) ;

int init_pktinfo(int domain, struct cmsghdr *cmsg)
{
 struct in6_pktinfo *pktinfo6;
 struct in_pktinfo *pktinfo4;

 if (domain == AF_INET) {
  cmsg->cmsg_level = SOL_IP;
  cmsg->cmsg_type = IP_PKTINFO;
  cmsg->cmsg_len = CMSG_LEN(sizeof(struct in_pktinfo));
  pktinfo4 = (struct in_pktinfo *)CMSG_DATA(cmsg);
  memset(pktinfo4, 0, sizeof(struct in_pktinfo));
  if (inet_pton(domain, SRC4_IP,
         (void *)&pktinfo4->ipi_spec_dst) != 1)
   return -1;
 } else if (domain == AF_INET6) {
  cmsg->cmsg_level = SOL_IPV6;
  cmsg->cmsg_type = IPV6_PKTINFO;
  cmsg->cmsg_len = CMSG_LEN(sizeof(struct in6_pktinfo));
  pktinfo6 = (struct in6_pktinfo *)CMSG_DATA(cmsg);
  memset(pktinfo6, 0, sizeof(struct in6_pktinfo));
  if (inet_pton(domain, SRC6_IP,
         (void *)&pktinfo6->ipi6_addr) != 1)
   return -1;
 } else {
  return -1;
 }

 return 0;
}
