
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int msg ;
typedef int dst ;


 int AF_INET6 ;
 int LINKLOCAL_MULTICAST ;
 int SOCK_DGRAM ;
 int close (int) ;
 int log_err (char*) ;
 scalar_t__ mk_dst_addr (int ,char const*,struct sockaddr_in6*) ;
 int sendto (int,char**,int,int ,struct sockaddr const*,int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int send_packet(const char *iface)
{
 struct sockaddr_in6 dst;
 char msg[] = "msg";
 int err = 0;
 int fd = -1;

 if (mk_dst_addr(LINKLOCAL_MULTICAST, iface, &dst))
  goto err;

 fd = socket(AF_INET6, SOCK_DGRAM, 0);
 if (fd == -1) {
  log_err("Failed to create UDP socket");
  goto err;
 }

 if (sendto(fd, &msg, sizeof(msg), 0, (const struct sockaddr *)&dst,
     sizeof(dst)) == -1) {
  log_err("Failed to send datagram");
  goto err;
 }

 goto out;
err:
 err = -1;
out:
 if (fd >= 0)
  close(fd);
 return err;
}
