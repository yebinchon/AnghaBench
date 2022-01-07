
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;


 int snprintf (char*,size_t const,char*,int *) ;

__attribute__((used)) static int
ff_layout_ntop4(const struct sockaddr *sap, char *buf, const size_t buflen)
{
 const struct sockaddr_in *sin = (struct sockaddr_in *)sap;

 return snprintf(buf, buflen, "%pI4", &sin->sin_addr);
}
