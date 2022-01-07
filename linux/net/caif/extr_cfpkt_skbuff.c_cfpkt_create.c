
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct cfpkt {int dummy; } ;


 scalar_t__ PKT_POSTFIX ;
 int PKT_PREFIX ;
 struct cfpkt* cfpkt_create_pfx (scalar_t__,int ) ;

inline struct cfpkt *cfpkt_create(u16 len)
{
 return cfpkt_create_pfx(len + PKT_POSTFIX, PKT_PREFIX);
}
