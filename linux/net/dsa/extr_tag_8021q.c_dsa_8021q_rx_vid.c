
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dsa_switch {int index; } ;


 int DSA_8021Q_DIR_RX ;
 int DSA_8021Q_PORT (int) ;
 int DSA_8021Q_SWITCH_ID (int ) ;

u16 dsa_8021q_rx_vid(struct dsa_switch *ds, int port)
{
 return DSA_8021Q_DIR_RX | DSA_8021Q_SWITCH_ID(ds->index) |
        DSA_8021Q_PORT(port);
}
