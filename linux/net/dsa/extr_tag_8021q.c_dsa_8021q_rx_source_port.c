
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int DSA_8021Q_PORT_MASK ;
 int DSA_8021Q_PORT_SHIFT ;

int dsa_8021q_rx_source_port(u16 vid)
{
 return (vid & DSA_8021Q_PORT_MASK) >> DSA_8021Q_PORT_SHIFT;
}
