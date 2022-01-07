
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pinginfo {scalar_t__* times; int member_0; } ;
struct in_addr {int s_addr; } ;
typedef int inaddrbuf ;
typedef int __u32 ;
typedef size_t __u16 ;


 int AF_INET ;
 int INET_ADDRSTRLEN ;
 int bpf_map_delete_elem (int,int *) ;
 scalar_t__ bpf_map_lookup_elem (int,int *,struct pinginfo*) ;
 int fprintf (int ,char*,size_t,size_t) ;
 char* inet_ntop (int ,struct in_addr*,char*,int) ;
 int perror (char*) ;
 int printf (char*,...) ;
 int stderr ;

__attribute__((used)) static int get_stats(int fd, __u16 count, __u32 raddr)
{
 struct pinginfo pinginfo = { 0 };
 char inaddrbuf[INET_ADDRSTRLEN];
 struct in_addr inaddr;
 __u16 i;

 inaddr.s_addr = raddr;

 printf("\nXDP RTT data:\n");

 if (bpf_map_lookup_elem(fd, &raddr, &pinginfo)) {
  perror("bpf_map_lookup elem: ");
  return 1;
 }

 for (i = 0; i < count; i++) {
  if (pinginfo.times[i] == 0)
   break;

  printf("64 bytes from %s: icmp_seq=%d ttl=64 time=%#.5f ms\n",
         inet_ntop(AF_INET, &inaddr, inaddrbuf,
     sizeof(inaddrbuf)),
         count + i + 1,
         (double)pinginfo.times[i]/1000000);
 }

 if (i < count) {
  fprintf(stderr, "Expected %d samples, got %d.\n", count, i);
  return 1;
 }

 bpf_map_delete_elem(fd, &raddr);

 return 0;
}
