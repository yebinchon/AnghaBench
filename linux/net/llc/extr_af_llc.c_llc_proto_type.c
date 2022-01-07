
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int __be16 ;


 int ETH_P_802_2 ;
 int htons (int ) ;

__attribute__((used)) static inline __be16 llc_proto_type(u16 arphrd)
{
 return htons(ETH_P_802_2);
}
