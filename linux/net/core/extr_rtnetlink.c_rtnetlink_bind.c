
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int user_ns; } ;


 int CAP_NET_ADMIN ;
 int EPERM ;


 int ns_capable (int ,int ) ;

__attribute__((used)) static int rtnetlink_bind(struct net *net, int group)
{
 switch (group) {
 case 129:
 case 128:
  if (!ns_capable(net->user_ns, CAP_NET_ADMIN))
   return -EPERM;
  break;
 }
 return 0;
}
