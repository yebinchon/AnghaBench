
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int __be32 ;



__attribute__((used)) static inline __be32 sk_extract_addr(struct sockaddr *addr)
{
 return ((struct sockaddr_in *) addr)->sin_addr.s_addr;
}
