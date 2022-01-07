
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct bitmap_port {scalar_t__ first_port; } ;



__attribute__((used)) static inline u16
port_to_id(const struct bitmap_port *m, u16 port)
{
 return port - m->first_port;
}
