
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inetpeer_addr {int dummy; } ;


 scalar_t__ inetpeer_addr_cmp (struct inetpeer_addr const*,struct inetpeer_addr const*) ;

__attribute__((used)) static bool addr_same(const struct inetpeer_addr *a,
        const struct inetpeer_addr *b)
{
 return inetpeer_addr_cmp(a, b) == 0;
}
