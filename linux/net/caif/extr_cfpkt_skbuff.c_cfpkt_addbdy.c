
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cfpkt {int dummy; } ;


 int cfpkt_add_body (struct cfpkt*,int *,int) ;

inline int cfpkt_addbdy(struct cfpkt *pkt, u8 data)
{
 return cfpkt_add_body(pkt, &data, 1);
}
