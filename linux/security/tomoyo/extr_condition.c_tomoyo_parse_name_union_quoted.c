
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_name_union {int * filename; } ;
struct tomoyo_acl_param {char* data; } ;


 int * tomoyo_get_dqword (char*) ;
 int tomoyo_parse_name_union (struct tomoyo_acl_param*,struct tomoyo_name_union*) ;

__attribute__((used)) static bool tomoyo_parse_name_union_quoted(struct tomoyo_acl_param *param,
        struct tomoyo_name_union *ptr)
{
 char *filename = param->data;

 if (*filename == '@')
  return tomoyo_parse_name_union(param, ptr);
 ptr->filename = tomoyo_get_dqword(filename);
 return ptr->filename != ((void*)0);
}
