
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct mrp_attr {scalar_t__ type; scalar_t__ len; int value; } ;


 int memcmp (int ,void const*,scalar_t__) ;

__attribute__((used)) static int mrp_attr_cmp(const struct mrp_attr *attr,
    const void *value, u8 len, u8 type)
{
 if (attr->type != type)
  return attr->type - type;
 if (attr->len != len)
  return attr->len - len;
 return memcmp(attr->value, value, len);
}
