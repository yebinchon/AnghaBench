
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tomoyo_ipaddr_union {TYPE_1__* ip; scalar_t__ is_ipv6; } ;
struct TYPE_3__ {int * s6_addr32; } ;


 int tomoyo_print_ipv4 (char*,unsigned int const,int *,int *) ;
 int tomoyo_print_ipv6 (char*,unsigned int const,TYPE_1__*,TYPE_1__*) ;

void tomoyo_print_ip(char *buf, const unsigned int size,
       const struct tomoyo_ipaddr_union *ptr)
{
 if (ptr->is_ipv6)
  tomoyo_print_ipv6(buf, size, &ptr->ip[0], &ptr->ip[1]);
 else
  tomoyo_print_ipv4(buf, size, &ptr->ip[0].s6_addr32[0],
      &ptr->ip[1].s6_addr32[0]);
}
