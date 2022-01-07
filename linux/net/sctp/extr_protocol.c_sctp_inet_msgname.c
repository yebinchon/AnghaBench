
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_zero; int sin_family; } ;


 int AF_INET ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void sctp_inet_msgname(char *msgname, int *addr_len)
{
 struct sockaddr_in *sin;

 sin = (struct sockaddr_in *)msgname;
 *addr_len = sizeof(struct sockaddr_in);
 sin->sin_family = AF_INET;
 memset(sin->sin_zero, 0, sizeof(sin->sin_zero));
}
