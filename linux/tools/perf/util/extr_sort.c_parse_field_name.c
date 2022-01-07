
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static int parse_field_name(char *str, char **event, char **field, char **opt)
{
 char *event_name, *field_name, *opt_name;

 event_name = str;
 field_name = strchr(str, '.');

 if (field_name) {
  *field_name++ = '\0';
 } else {
  event_name = ((void*)0);
  field_name = str;
 }

 opt_name = strchr(field_name, '/');
 if (opt_name)
  *opt_name++ = '\0';

 *event = event_name;
 *field = field_name;
 *opt = opt_name;

 return 0;
}
