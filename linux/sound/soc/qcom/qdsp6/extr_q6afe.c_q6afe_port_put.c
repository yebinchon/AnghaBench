
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct q6afe_port {int refcount; } ;


 int kref_put (int *,int ) ;
 int q6afe_port_free ;

void q6afe_port_put(struct q6afe_port *port)
{
 kref_put(&port->refcount, q6afe_port_free);
}
