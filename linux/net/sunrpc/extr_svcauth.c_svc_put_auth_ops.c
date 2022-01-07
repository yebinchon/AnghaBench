
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_ops {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void
svc_put_auth_ops(struct auth_ops *aops)
{
 module_put(aops->owner);
}
