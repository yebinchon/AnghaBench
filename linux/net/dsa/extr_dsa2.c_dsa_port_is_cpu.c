
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_port {scalar_t__ type; } ;


 scalar_t__ DSA_PORT_TYPE_CPU ;

__attribute__((used)) static bool dsa_port_is_cpu(struct dsa_port *port)
{
 return port->type == DSA_PORT_TYPE_CPU;
}
