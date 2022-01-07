
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; } ;
typedef TYPE_1__ uuid_t ;


 int __uuid_parse (char const*,int ,int ) ;
 int uuid_index ;

int uuid_parse(const char *uuid, uuid_t *u)
{
 return __uuid_parse(uuid, u->b, uuid_index);
}
