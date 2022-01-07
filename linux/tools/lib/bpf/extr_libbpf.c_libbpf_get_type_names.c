
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* sec; int is_attachable; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int MAX_TYPE_NAME_SIZE ;
 int free (char*) ;
 char* malloc (int) ;
 TYPE_1__* section_names ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static char *libbpf_get_type_names(bool attach_type)
{
 int i, len = ARRAY_SIZE(section_names) * MAX_TYPE_NAME_SIZE;
 char *buf;

 buf = malloc(len);
 if (!buf)
  return ((void*)0);

 buf[0] = '\0';

 for (i = 0; i < ARRAY_SIZE(section_names); i++) {
  if (attach_type && !section_names[i].is_attachable)
   continue;

  if (strlen(buf) + strlen(section_names[i].sec) + 2 > len) {
   free(buf);
   return ((void*)0);
  }
  strcat(buf, " ");
  strcat(buf, section_names[i].sec);
 }

 return buf;
}
