
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; } ;
typedef TYPE_1__ jsmntok_t ;


 int countchar (char*,char,int ) ;

int json_line(char *map, jsmntok_t *t)
{
 return countchar(map, '\n', t->start) + 1;
}
