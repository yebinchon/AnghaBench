
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ IP_DEFRAG_AF_PACKET ;
 int IP_DEFRAG_CONNTRACK_BRIDGE_IN ;
 int IP_DEFRAG_CONNTRACK_IN ;
 int __IP_DEFRAG_CONNTRACK_BRIDGE_IN ;
 int __IP_DEFRAG_CONNTRACK_IN_END ;
 scalar_t__ ip_defrag_user_in_between (scalar_t__,int ,int ) ;

__attribute__((used)) static bool frag_expire_skip_icmp(u32 user)
{
 return user == IP_DEFRAG_AF_PACKET ||
        ip_defrag_user_in_between(user, IP_DEFRAG_CONNTRACK_IN,
      __IP_DEFRAG_CONNTRACK_IN_END) ||
        ip_defrag_user_in_between(user, IP_DEFRAG_CONNTRACK_BRIDGE_IN,
      __IP_DEFRAG_CONNTRACK_BRIDGE_IN);
}
