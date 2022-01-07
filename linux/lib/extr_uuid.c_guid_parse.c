
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b; } ;
typedef TYPE_1__ guid_t ;


 int __uuid_parse (char const*,int ,int ) ;
 int guid_index ;

int guid_parse(const char *uuid, guid_t *u)
{
 return __uuid_parse(uuid, u->b, guid_index);
}
