
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be32 ;


 int htonl (int) ;
 int ntohl (int ) ;

__attribute__((used)) static inline __be32 maskl(__be32 a, unsigned int l)
{
 return l ? htonl(ntohl(a) & ~0 << (32 - l)) : 0;
}
