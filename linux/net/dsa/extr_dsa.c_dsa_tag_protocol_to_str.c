
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_device_ops {char const* name; } ;



const char *dsa_tag_protocol_to_str(const struct dsa_device_ops *ops)
{
 return ops->name;
}
