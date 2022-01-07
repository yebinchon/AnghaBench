
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {scalar_t__ sin6_port; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {void* s_addr; } ;
struct ip6_hdr {int ip6_hops; int ip_hl; int ip_v; int ip_ttl; void* ip_len; void* ip_off; void* ip6_plen; scalar_t__ ip_sum; int ip_dst; TYPE_1__ ip_src; void* ip_p; void* ip_id; scalar_t__ ip_tos; void* ip6_dst; void* ip6_src; int ip6_nxt; void* ip6_flow; } ;
struct ip6_frag {void* ip6f_offlg; void* ip6f_ident; scalar_t__ ip6f_reserved; void* ip6f_nxt; } ;
struct ip {int ip6_hops; int ip_hl; int ip_v; int ip_ttl; void* ip_len; void* ip_off; void* ip6_plen; scalar_t__ ip_sum; int ip_dst; TYPE_1__ ip_src; void* ip_p; void* ip_id; scalar_t__ ip_tos; void* ip6_dst; void* ip6_src; int ip6_nxt; void* ip6_flow; } ;
typedef int socklen_t ;


 int INADDR_LOOPBACK ;
 scalar_t__ IP4_HLEN ;
 int IP4_MF ;
 scalar_t__ IP6_HLEN ;
 int IP6_MF ;
 int IPPROTO_FRAGMENT ;
 void* IPPROTO_UDP ;
 int UDP_HLEN ;
 int addr4 ;
 void* addr6 ;
 scalar_t__ cfg_overlap ;
 int errno ;
 int error (int,int ,char*,int,...) ;
 int frag_counter ;
 void* htonl (int) ;
 void* htons (int) ;
 scalar_t__ ip_frame ;
 int ip_id ;
 int max_frag_len ;
 int memset (struct ip6_hdr*,int ,int) ;
 int payload_len ;
 int rand () ;
 int send_fragment (int,struct sockaddr*,int ,int,int) ;
 int sendto (int,scalar_t__,int,int ,struct sockaddr*,int ) ;

__attribute__((used)) static void send_udp_frags(int fd_raw, struct sockaddr *addr,
    socklen_t alen, bool ipv6)
{
 struct ip *iphdr = (struct ip *)ip_frame;
 struct ip6_hdr *ip6hdr = (struct ip6_hdr *)ip_frame;
 int res;
 int offset;
 int frag_len;
 if (ipv6) {
  struct ip6_frag *fraghdr = (struct ip6_frag *)(ip_frame + IP6_HLEN);
  ((struct sockaddr_in6 *)addr)->sin6_port = 0;
  memset(ip6hdr, 0, sizeof(*ip6hdr));
  ip6hdr->ip6_flow = htonl(6<<28);
  ip6hdr->ip6_nxt = IPPROTO_FRAGMENT;
  ip6hdr->ip6_hops = 255;
  ip6hdr->ip6_src = addr6;
  ip6hdr->ip6_dst = addr6;
  fraghdr->ip6f_nxt = IPPROTO_UDP;
  fraghdr->ip6f_reserved = 0;
  fraghdr->ip6f_ident = htonl(ip_id++);
 } else {
  memset(iphdr, 0, sizeof(*iphdr));
  iphdr->ip_hl = 5;
  iphdr->ip_v = 4;
  iphdr->ip_tos = 0;
  iphdr->ip_id = htons(ip_id++);
  iphdr->ip_ttl = 0x40;
  iphdr->ip_p = IPPROTO_UDP;
  iphdr->ip_src.s_addr = htonl(INADDR_LOOPBACK);
  iphdr->ip_dst = addr4;
  iphdr->ip_sum = 0;
 }


 if (!cfg_overlap && (rand() % 100 < 15)) {
  offset = 0;
  while (offset < (UDP_HLEN + payload_len)) {
   send_fragment(fd_raw, addr, alen, offset, ipv6);
   offset += max_frag_len;
  }
  return;
 }


 if (!cfg_overlap && (rand() % 100 < 20) &&
   (payload_len > 9 * max_frag_len)) {
  offset = 6 * max_frag_len;
  while (offset < (UDP_HLEN + payload_len)) {
   send_fragment(fd_raw, addr, alen, offset, ipv6);
   offset += max_frag_len;
  }
  offset = 3 * max_frag_len;
  while (offset < 6 * max_frag_len) {
   send_fragment(fd_raw, addr, alen, offset, ipv6);
   offset += max_frag_len;
  }
  offset = 0;
  while (offset < 3 * max_frag_len) {
   send_fragment(fd_raw, addr, alen, offset, ipv6);
   offset += max_frag_len;
  }
  return;
 }


 offset = max_frag_len;
 while (offset < (UDP_HLEN + payload_len)) {
  send_fragment(fd_raw, addr, alen, offset, ipv6);

  if (rand() % 100 == 1)
   send_fragment(fd_raw, addr, alen, offset, ipv6);
  offset += 2 * max_frag_len;
 }

 if (cfg_overlap) {
  if (max_frag_len * 4 < payload_len || max_frag_len < 16) {

   offset = 8;
   frag_len = UDP_HLEN + max_frag_len;
  } else {
   offset = rand() % (payload_len / 2);
   frag_len = 2 * max_frag_len + 1 + rand() % 256;
  }
  if (ipv6) {
   struct ip6_frag *fraghdr = (struct ip6_frag *)(ip_frame + IP6_HLEN);


   frag_len &= ~0x7;
   fraghdr->ip6f_offlg = htons(offset / 8 | IP6_MF);
   ip6hdr->ip6_plen = htons(frag_len);
   frag_len += IP6_HLEN;
  } else {
   frag_len += IP4_HLEN;
   iphdr->ip_off = htons(offset / 8 | IP4_MF);
   iphdr->ip_len = htons(frag_len);
  }
  res = sendto(fd_raw, ip_frame, frag_len, 0, addr, alen);
  if (res < 0)
   error(1, errno, "sendto overlap: %d", frag_len);
  if (res != frag_len)
   error(1, 0, "sendto overlap: %d vs %d", (int)res, frag_len);
  frag_counter++;
 }


 offset = 0;
 while (offset < (UDP_HLEN + payload_len)) {
  send_fragment(fd_raw, addr, alen, offset, ipv6);

  if (rand() % 100 == 1)
   send_fragment(fd_raw, addr, alen, offset, ipv6);
  offset += 2 * max_frag_len;
 }
}
