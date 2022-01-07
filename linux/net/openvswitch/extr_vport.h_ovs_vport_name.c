
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vport {TYPE_1__* dev; } ;
struct TYPE_2__ {char const* name; } ;



__attribute__((used)) static inline const char *ovs_vport_name(struct vport *vport)
{
 return vport->dev->name;
}
