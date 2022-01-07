
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_nl {int nl_pid; int nl_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sa ;
typedef int one ;
typedef int __u32 ;


 int AF_NETLINK ;
 int LIBBPF_ERRNO__INTERNAL ;
 int NETLINK_EXT_ACK ;
 int NETLINK_ROUTE ;
 int SOCK_RAW ;
 int SOL_NETLINK ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int errno ;
 int fprintf (int ,char*) ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int memset (struct sockaddr_nl*,int ,int) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;

int libbpf_netlink_open(__u32 *nl_pid)
{
 struct sockaddr_nl sa;
 socklen_t addrlen;
 int one = 1, ret;
 int sock;

 memset(&sa, 0, sizeof(sa));
 sa.nl_family = AF_NETLINK;

 sock = socket(AF_NETLINK, SOCK_RAW, NETLINK_ROUTE);
 if (sock < 0)
  return -errno;

 if (setsockopt(sock, SOL_NETLINK, NETLINK_EXT_ACK,
         &one, sizeof(one)) < 0) {
  fprintf(stderr, "Netlink error reporting not supported\n");
 }

 if (bind(sock, (struct sockaddr *)&sa, sizeof(sa)) < 0) {
  ret = -errno;
  goto cleanup;
 }

 addrlen = sizeof(sa);
 if (getsockname(sock, (struct sockaddr *)&sa, &addrlen) < 0) {
  ret = -errno;
  goto cleanup;
 }

 if (addrlen != sizeof(sa)) {
  ret = -LIBBPF_ERRNO__INTERNAL;
  goto cleanup;
 }

 *nl_pid = sa.nl_pid;
 return sock;

cleanup:
 close(sock);
 return ret;
}
