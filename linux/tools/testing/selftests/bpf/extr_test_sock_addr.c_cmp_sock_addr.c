
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef scalar_t__ (* info_fn ) (int,struct sockaddr*,int*) ;
typedef int addr1 ;


 int cmp_addr (struct sockaddr_storage*,struct sockaddr_storage const*,int) ;
 int memset (struct sockaddr_storage*,int ,int) ;

__attribute__((used)) static int cmp_sock_addr(info_fn fn, int sock1,
    const struct sockaddr_storage *addr2, int cmp_port)
{
 struct sockaddr_storage addr1;
 socklen_t len1 = sizeof(addr1);

 memset(&addr1, 0, len1);
 if (fn(sock1, (struct sockaddr *)&addr1, (socklen_t *)&len1) != 0)
  return -1;

 return cmp_addr(&addr1, addr2, cmp_port);
}
