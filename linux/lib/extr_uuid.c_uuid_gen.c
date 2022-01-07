
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* b; } ;
typedef TYPE_1__ uuid_t ;


 int __uuid_gen_common (int*) ;

void uuid_gen(uuid_t *bu)
{
 __uuid_gen_common(bu->b);

 bu->b[6] = (bu->b[6] & 0x0F) | 0x40;
}
