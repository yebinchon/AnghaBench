
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct test_params {int protocol; int send_family; int recv_port; } ;
struct sockaddr {int dummy; } ;
typedef int one ;


 int MSG_FASTOPEN ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 scalar_t__ bind (int const,struct sockaddr* const,int ) ;
 int close (int const) ;
 int errno ;
 int error (int,int ,char*) ;
 int free (struct sockaddr* const) ;
 struct sockaddr* new_any_sockaddr (int ,int ) ;
 struct sockaddr* new_loopback_sockaddr (int ,int ) ;
 scalar_t__ sendto (int const,char*,size_t,int ,struct sockaddr* const,int ) ;
 scalar_t__ setsockopt (int const,int ,int ,int const*,int) ;
 int sockaddr_size () ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void send_from(struct test_params p, uint16_t sport, char *buf,
        size_t len)
{
 struct sockaddr * const saddr = new_any_sockaddr(p.send_family, sport);
 struct sockaddr * const daddr =
  new_loopback_sockaddr(p.send_family, p.recv_port);
 const int fd = socket(p.send_family, p.protocol, 0), one = 1;

 if (fd < 0)
  error(1, errno, "failed to create send socket");

 if (setsockopt(fd, SOL_SOCKET, SO_REUSEADDR, &one, sizeof(one)))
  error(1, errno, "failed to set reuseaddr");

 if (bind(fd, saddr, sockaddr_size()))
  error(1, errno, "failed to bind send socket");

 if (sendto(fd, buf, len, MSG_FASTOPEN, daddr, sockaddr_size()) < 0)
  error(1, errno, "failed to send message");

 close(fd);
 free(saddr);
 free(daddr);
}
