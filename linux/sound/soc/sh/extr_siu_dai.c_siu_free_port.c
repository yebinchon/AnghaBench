
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siu_port {int dummy; } ;


 int kfree (struct siu_port*) ;

void siu_free_port(struct siu_port *port_info)
{
 kfree(port_info);
}
