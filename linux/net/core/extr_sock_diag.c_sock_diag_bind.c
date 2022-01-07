
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 size_t AF_INET ;
 size_t AF_INET6 ;




 int * sock_diag_handlers ;
 int sock_load_diag_module (size_t,int ) ;

__attribute__((used)) static int sock_diag_bind(struct net *net, int group)
{
 switch (group) {
 case 129:
 case 128:
  if (!sock_diag_handlers[AF_INET])
   sock_load_diag_module(AF_INET, 0);
  break;
 case 131:
 case 130:
  if (!sock_diag_handlers[AF_INET6])
   sock_load_diag_module(AF_INET6, 0);
  break;
 }
 return 0;
}
