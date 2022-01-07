
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct geneve_port {int dummy; } ;


 struct geneve_port* vport_priv (struct vport const*) ;

__attribute__((used)) static inline struct geneve_port *geneve_vport(const struct vport *vport)
{
 return vport_priv(vport);
}
