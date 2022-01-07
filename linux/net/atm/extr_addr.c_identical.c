
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pub; scalar_t__* prv; } ;
struct sockaddr_atmsvc {TYPE_1__ sas_addr; } ;


 int ATM_ESA_LEN ;
 scalar_t__ memcmp (scalar_t__*,scalar_t__*,int ) ;
 int strcmp (int *,int *) ;

__attribute__((used)) static int identical(const struct sockaddr_atmsvc *a, const struct sockaddr_atmsvc *b)
{
 if (*a->sas_addr.prv)
  if (memcmp(a->sas_addr.prv, b->sas_addr.prv, ATM_ESA_LEN))
   return 0;
 if (!*a->sas_addr.pub)
  return !*b->sas_addr.pub;
 if (!*b->sas_addr.pub)
  return 0;
 return !strcmp(a->sas_addr.pub, b->sas_addr.pub);
}
