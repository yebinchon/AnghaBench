
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cflayer {struct cflayer* up; } ;



void cffrml_set_uplayer(struct cflayer *this, struct cflayer *up)
{
 this->up = up;
}
