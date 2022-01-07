
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {TYPE_2__ sin_addr; } ;
struct TYPE_4__ {int sin6_addr; } ;
union sa46 {scalar_t__ family; TYPE_3__ v4; TYPE_1__ v6; } ;
typedef scalar_t__ sa_family_t ;


 scalar_t__ AF_INET6 ;
 int INADDR_LOOPBACK ;
 int htonl (int ) ;
 int in6addr_loopback ;
 int memset (union sa46*,int ,int) ;

__attribute__((used)) static void sa46_init_loopback(union sa46 *sa, sa_family_t family)
{
 memset(sa, 0, sizeof(*sa));
 sa->family = family;
 if (sa->family == AF_INET6)
  sa->v6.sin6_addr = in6addr_loopback;
 else
  sa->v4.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
}
