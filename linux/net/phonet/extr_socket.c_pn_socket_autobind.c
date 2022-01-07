
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int sk; } ;
struct sockaddr_pn {int spn_family; } ;
struct sockaddr {int dummy; } ;
typedef int sa ;
struct TYPE_2__ {int sobject; } ;


 int AF_PHONET ;
 int BUG_ON (int) ;
 int EINVAL ;
 int memset (struct sockaddr_pn*,int ,int) ;
 int pn_port (int ) ;
 TYPE_1__* pn_sk (int ) ;
 int pn_socket_bind (struct socket*,struct sockaddr*,int) ;

__attribute__((used)) static int pn_socket_autobind(struct socket *sock)
{
 struct sockaddr_pn sa;
 int err;

 memset(&sa, 0, sizeof(sa));
 sa.spn_family = AF_PHONET;
 err = pn_socket_bind(sock, (struct sockaddr *)&sa,
    sizeof(struct sockaddr_pn));
 if (err != -EINVAL)
  return err;
 BUG_ON(!pn_port(pn_sk(sock->sk)->sobject));
 return 0;
}
