
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
typedef int socklen_t ;


 int MSG_FASTOPEN ;
 int SOCK_STREAM ;
 int sendmsg_to_server (int ,struct sockaddr_storage const*,int ,int ,int ,int*) ;

__attribute__((used)) static int fastconnect_to_server(const struct sockaddr_storage *addr,
     socklen_t addr_len)
{
 int sendmsg_err;

 return sendmsg_to_server(SOCK_STREAM, addr, addr_len, 0,
     MSG_FASTOPEN, &sendmsg_err);
}
