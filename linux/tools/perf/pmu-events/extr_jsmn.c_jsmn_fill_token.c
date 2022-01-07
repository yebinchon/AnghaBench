
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsmntype_t ;
struct TYPE_3__ {int start; int end; scalar_t__ size; int type; } ;
typedef TYPE_1__ jsmntok_t ;



__attribute__((used)) static void jsmn_fill_token(jsmntok_t *token, jsmntype_t type,
       int start, int end)
{
 token->type = type;
 token->start = start;
 token->end = end;
 token->size = 0;
}
