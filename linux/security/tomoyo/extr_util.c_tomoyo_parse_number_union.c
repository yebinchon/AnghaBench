
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tomoyo_number_union {unsigned long* values; scalar_t__* value_type; int * group; } ;
struct tomoyo_acl_param {char* data; } ;


 int TOMOYO_NUMBER_GROUP ;
 scalar_t__ TOMOYO_VALUE_TYPE_INVALID ;
 int memset (struct tomoyo_number_union*,int ,int) ;
 int * tomoyo_get_group (struct tomoyo_acl_param*,int ) ;
 scalar_t__ tomoyo_parse_ulong (unsigned long*,char**) ;
 char* tomoyo_read_token (struct tomoyo_acl_param*) ;

bool tomoyo_parse_number_union(struct tomoyo_acl_param *param,
          struct tomoyo_number_union *ptr)
{
 char *data;
 u8 type;
 unsigned long v;

 memset(ptr, 0, sizeof(*ptr));
 if (param->data[0] == '@') {
  param->data++;
  ptr->group = tomoyo_get_group(param, TOMOYO_NUMBER_GROUP);
  return ptr->group != ((void*)0);
 }
 data = tomoyo_read_token(param);
 type = tomoyo_parse_ulong(&v, &data);
 if (type == TOMOYO_VALUE_TYPE_INVALID)
  return 0;
 ptr->values[0] = v;
 ptr->value_type[0] = type;
 if (!*data) {
  ptr->values[1] = v;
  ptr->value_type[1] = type;
  return 1;
 }
 if (*data++ != '-')
  return 0;
 type = tomoyo_parse_ulong(&v, &data);
 if (type == TOMOYO_VALUE_TYPE_INVALID || *data || ptr->values[0] > v)
  return 0;
 ptr->values[1] = v;
 ptr->value_type[1] = type;
 return 1;
}
