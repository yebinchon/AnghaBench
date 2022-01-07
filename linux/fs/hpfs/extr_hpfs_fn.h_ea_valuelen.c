
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extended_attribute {int valuelen_lo; int valuelen_hi; } ;



__attribute__((used)) static unsigned ea_valuelen(struct extended_attribute *ea)
{
 return ea->valuelen_lo + 256 * ea->valuelen_hi;
}
