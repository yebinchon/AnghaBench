
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_port {int type; } ;


 int DSA_PORT_TYPE_DSA ;

__attribute__((used)) static int dsa_port_parse_dsa(struct dsa_port *dp)
{
 dp->type = DSA_PORT_TYPE_DSA;

 return 0;
}
