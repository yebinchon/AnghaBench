
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iphdr {int dummy; } ;



__attribute__((used)) static bool ip_has_options(unsigned int thoff)
{
 return thoff != sizeof(struct iphdr);
}
