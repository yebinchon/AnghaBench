
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {TYPE_1__* name; } ;
struct token {scalar_t__ size; int content; } ;
struct TYPE_2__ {scalar_t__ size; int content; } ;


 int memcmp (int ,int ,int) ;

__attribute__((used)) static int type_finder(const void *_key, const void *_ti)
{
 const struct token *token = _key;
 const struct type *const *ti = _ti;
 const struct type *type = *ti;

 if (token->size != type->name->size)
  return token->size - type->name->size;
 else
  return memcmp(token->content, type->name->content,
         token->size);
}
