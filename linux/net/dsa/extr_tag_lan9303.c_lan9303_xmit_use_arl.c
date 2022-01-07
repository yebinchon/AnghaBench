
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct lan9303 {scalar_t__ is_bridged; } ;
struct dsa_port {TYPE_1__* ds; } ;
struct TYPE_2__ {struct lan9303* priv; } ;


 int is_multicast_ether_addr (int *) ;

__attribute__((used)) static int lan9303_xmit_use_arl(struct dsa_port *dp, u8 *dest_addr)
{
 struct lan9303 *chip = dp->ds->priv;

 return chip->is_bridged && !is_multicast_ether_addr(dest_addr);
}
