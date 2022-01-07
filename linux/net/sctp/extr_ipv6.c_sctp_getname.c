
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union sctp_addr {int dummy; } sctp_addr ;
struct socket {int sk; } ;
struct sockaddr {int dummy; } ;


 int inet6_getname (struct socket*,struct sockaddr*,int) ;
 int sctp_sk (int ) ;
 int sctp_v6_addr_to_user (int ,union sctp_addr*) ;

__attribute__((used)) static int sctp_getname(struct socket *sock, struct sockaddr *uaddr,
   int peer)
{
 int rc;

 rc = inet6_getname(sock, uaddr, peer);

 if (rc < 0)
  return rc;

 rc = sctp_v6_addr_to_user(sctp_sk(sock->sk),
       (union sctp_addr *)uaddr);

 return rc;
}
