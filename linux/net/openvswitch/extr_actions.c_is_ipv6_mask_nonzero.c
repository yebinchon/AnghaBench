
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;



__attribute__((used)) static bool is_ipv6_mask_nonzero(const __be32 addr[4])
{
 return !!(addr[0] | addr[1] | addr[2] | addr[3]);
}
