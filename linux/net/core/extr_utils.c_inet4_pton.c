
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sockaddr_storage {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; int sin_family; TYPE_1__ sin_addr; } ;


 int AF_INET ;
 int EINVAL ;
 int INET_ADDRSTRLEN ;
 int htons (int ) ;
 scalar_t__ in4_pton (char const*,int,int *,char,int *) ;
 int strlen (char const*) ;

__attribute__((used)) static int inet4_pton(const char *src, u16 port_num,
  struct sockaddr_storage *addr)
{
 struct sockaddr_in *addr4 = (struct sockaddr_in *)addr;
 int srclen = strlen(src);

 if (srclen > INET_ADDRSTRLEN)
  return -EINVAL;

 if (in4_pton(src, srclen, (u8 *)&addr4->sin_addr.s_addr,
       '\n', ((void*)0)) == 0)
  return -EINVAL;

 addr4->sin_family = AF_INET;
 addr4->sin_port = htons(port_num);

 return 0;
}
