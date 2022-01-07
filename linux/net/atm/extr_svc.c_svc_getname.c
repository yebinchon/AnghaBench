
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockaddr_atmsvc {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int local; int remote; } ;


 TYPE_1__* ATM_SD (struct socket*) ;
 int memcpy (struct sockaddr_atmsvc*,int *,int) ;

__attribute__((used)) static int svc_getname(struct socket *sock, struct sockaddr *sockaddr,
         int peer)
{
 struct sockaddr_atmsvc *addr;

 addr = (struct sockaddr_atmsvc *) sockaddr;
 memcpy(addr, peer ? &ATM_SD(sock)->remote : &ATM_SD(sock)->local,
        sizeof(struct sockaddr_atmsvc));
 return sizeof(struct sockaddr_atmsvc);
}
