
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cflayer {struct cflayer* dn; } ;



void cffrml_set_dnlayer(struct cflayer *this, struct cflayer *dn)
{
 this->dn = dn;
}
