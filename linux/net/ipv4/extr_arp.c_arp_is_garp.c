
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; } ;
struct net {int dummy; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;


 int ARPOP_REPLY ;
 int RTN_UNICAST ;
 scalar_t__ htons (int ) ;
 int inet_addr_type_dev_table (struct net*,struct net_device*,scalar_t__) ;
 int memcmp (unsigned char*,unsigned char*,int ) ;

__attribute__((used)) static bool arp_is_garp(struct net *net, struct net_device *dev,
   int *addr_type, __be16 ar_op,
   __be32 sip, __be32 tip,
   unsigned char *sha, unsigned char *tha)
{
 bool is_garp = tip == sip;




 if (is_garp && ar_op == htons(ARPOP_REPLY))
  is_garp =



   tha &&
   !memcmp(tha, sha, dev->addr_len);

 if (is_garp) {
  *addr_type = inet_addr_type_dev_table(net, dev, sip);
  if (*addr_type != RTN_UNICAST)
   is_garp = 0;
 }
 return is_garp;
}
