
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_UNSPEC ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int sctp_connect (int ,struct sockaddr*,int,int) ;

int sctp_inet_connect(struct socket *sock, struct sockaddr *uaddr,
        int addr_len, int flags)
{
 if (addr_len < sizeof(uaddr->sa_family))
  return -EINVAL;

 if (uaddr->sa_family == AF_UNSPEC)
  return -EOPNOTSUPP;

 return sctp_connect(sock->sk, uaddr, addr_len, flags);
}
