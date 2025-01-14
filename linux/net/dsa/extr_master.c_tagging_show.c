
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {struct dsa_port* dsa_ptr; } ;
struct dsa_port {int tag_ops; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 char* dsa_tag_protocol_to_str (int ) ;
 int sprintf (char*,char*,char*) ;
 struct net_device* to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t tagging_show(struct device *d, struct device_attribute *attr,
       char *buf)
{
 struct net_device *dev = to_net_dev(d);
 struct dsa_port *cpu_dp = dev->dsa_ptr;

 return sprintf(buf, "%s\n",
         dsa_tag_protocol_to_str(cpu_dp->tag_ops));
}
