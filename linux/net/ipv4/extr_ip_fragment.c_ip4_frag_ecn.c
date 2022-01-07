
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int INET_ECN_MASK ;

__attribute__((used)) static u8 ip4_frag_ecn(u8 tos)
{
 return 1 << (tos & INET_ECN_MASK);
}
