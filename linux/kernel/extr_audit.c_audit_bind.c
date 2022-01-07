
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;


 int CAP_AUDIT_READ ;
 int EPERM ;
 int capable (int ) ;

__attribute__((used)) static int audit_bind(struct net *net, int group)
{
 if (!capable(CAP_AUDIT_READ))
  return -EPERM;

 return 0;
}
