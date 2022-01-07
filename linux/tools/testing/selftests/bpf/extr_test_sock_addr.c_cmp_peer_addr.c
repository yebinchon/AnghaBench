
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;


 int cmp_sock_addr (int ,int,struct sockaddr_storage const*,int) ;
 int getpeername ;

__attribute__((used)) static int cmp_peer_addr(int sock1, const struct sockaddr_storage *addr2)
{
 return cmp_sock_addr(getpeername, sock1, addr2, 1);
}
