
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cfpkt {int dummy; } ;


 int cfpkt_add_body (struct cfpkt*,void const*,int ) ;

inline int cfpkt_add_trail(struct cfpkt *pkt, const void *data, u16 len)
{
 return cfpkt_add_body(pkt, data, len);
}
