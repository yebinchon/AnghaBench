
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int port_id ;
typedef scalar_t__ __u8 ;
typedef int __u16 ;


 int BR_PORT_BITS ;

__attribute__((used)) static inline port_id br_make_port_id(__u8 priority, __u16 port_no)
{
 return ((u16)priority << BR_PORT_BITS)
  | (port_no & ((1<<BR_PORT_BITS)-1));
}
