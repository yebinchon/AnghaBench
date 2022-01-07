
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_port {char const* name; int type; } ;


 int DSA_PORT_TYPE_USER ;

__attribute__((used)) static int dsa_port_parse_user(struct dsa_port *dp, const char *name)
{
 if (!name)
  name = "eth%d";

 dp->type = DSA_PORT_TYPE_USER;
 dp->name = name;

 return 0;
}
