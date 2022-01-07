
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct ila_addr {int dummy; } ;



__attribute__((used)) static inline struct ila_addr *ila_a2i(struct in6_addr *addr)
{
 return (struct ila_addr *)addr;
}
