
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;


 int pvc_bind (struct socket*,struct sockaddr*,int) ;

__attribute__((used)) static int pvc_connect(struct socket *sock, struct sockaddr *sockaddr,
         int sockaddr_len, int flags)
{
 return pvc_bind(sock, sockaddr, sockaddr_len);
}
