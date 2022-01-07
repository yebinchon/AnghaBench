
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ushort ;
struct socket {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int cl ;


 int AF_INET ;
 int EADDRINUSE ;
 int EINVAL ;
 int INADDR_ANY ;
 int htons (int ) ;
 int kernel_bind (struct socket*,struct sockaddr*,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 int p9_ipport_resv_max ;
 int p9_ipport_resv_min ;

__attribute__((used)) static int p9_bind_privport(struct socket *sock)
{
 struct sockaddr_in cl;
 int port, err = -EINVAL;

 memset(&cl, 0, sizeof(cl));
 cl.sin_family = AF_INET;
 cl.sin_addr.s_addr = INADDR_ANY;
 for (port = p9_ipport_resv_max; port >= p9_ipport_resv_min; port--) {
  cl.sin_port = htons((ushort)port);
  err = kernel_bind(sock, (struct sockaddr *)&cl, sizeof(cl));
  if (err != -EADDRINUSE)
   break;
 }
 return err;
}
