
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_name_union {int * filename; int * group; } ;
struct tomoyo_acl_param {char* data; } ;


 int TOMOYO_PATH_GROUP ;
 int tomoyo_correct_word (char*) ;
 int * tomoyo_get_group (struct tomoyo_acl_param*,int ) ;
 int * tomoyo_get_name (char*) ;
 char* tomoyo_read_token (struct tomoyo_acl_param*) ;

bool tomoyo_parse_name_union(struct tomoyo_acl_param *param,
        struct tomoyo_name_union *ptr)
{
 char *filename;

 if (param->data[0] == '@') {
  param->data++;
  ptr->group = tomoyo_get_group(param, TOMOYO_PATH_GROUP);
  return ptr->group != ((void*)0);
 }
 filename = tomoyo_read_token(param);
 if (!tomoyo_correct_word(filename))
  return 0;
 ptr->filename = tomoyo_get_name(filename);
 return ptr->filename != ((void*)0);
}
