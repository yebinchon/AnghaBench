
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_service {int dummy; } ;


 int EEXIST ;
 int ip_vs_unlink_service (struct ip_vs_service*,int) ;

__attribute__((used)) static int ip_vs_del_service(struct ip_vs_service *svc)
{
 if (svc == ((void*)0))
  return -EEXIST;
 ip_vs_unlink_service(svc, 0);

 return 0;
}
