
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct dsa_port* dsa_ptr; } ;
struct dsa_port {int index; } ;


 int EINVAL ;
 size_t snprintf (char*,size_t,char*,int) ;

__attribute__((used)) static int dsa_master_get_phys_port_name(struct net_device *dev,
      char *name, size_t len)
{
 struct dsa_port *cpu_dp = dev->dsa_ptr;

 if (snprintf(name, len, "p%d", cpu_dp->index) >= len)
  return -EINVAL;

 return 0;
}
