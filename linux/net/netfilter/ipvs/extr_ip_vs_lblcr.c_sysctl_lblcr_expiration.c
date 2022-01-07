
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_service {TYPE_1__* ipvs; } ;
struct TYPE_2__ {int sysctl_lblcr_expiration; } ;


 int DEFAULT_EXPIRATION ;

__attribute__((used)) static int sysctl_lblcr_expiration(struct ip_vs_service *svc)
{



 return DEFAULT_EXPIRATION;

}
