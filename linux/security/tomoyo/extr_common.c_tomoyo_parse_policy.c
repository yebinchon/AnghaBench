
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_delete; int * ns; } ;
struct tomoyo_io_buffer {scalar_t__ type; int (* write ) (struct tomoyo_io_buffer*) ;TYPE_1__ w; } ;


 int ENOENT ;
 scalar_t__ TOMOYO_EXCEPTIONPOLICY ;
 scalar_t__ TOMOYO_PROFILE ;
 int memmove (char*,char*,scalar_t__) ;
 char* strchr (char*,char) ;
 scalar_t__ strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int stub1 (struct tomoyo_io_buffer*) ;
 int * tomoyo_assign_namespace (char*) ;
 int tomoyo_kernel_namespace ;

__attribute__((used)) static int tomoyo_parse_policy(struct tomoyo_io_buffer *head, char *line)
{

 head->w.is_delete = !strncmp(line, "delete ", 7);
 if (head->w.is_delete)
  memmove(line, line + 7, strlen(line + 7) + 1);

 if (head->type == TOMOYO_EXCEPTIONPOLICY ||
     head->type == TOMOYO_PROFILE) {
  if (*line == '<') {
   char *cp = strchr(line, ' ');

   if (cp) {
    *cp++ = '\0';
    head->w.ns = tomoyo_assign_namespace(line);
    memmove(line, cp, strlen(cp) + 1);
   } else
    head->w.ns = ((void*)0);
  } else
   head->w.ns = &tomoyo_kernel_namespace;

  if (!head->w.ns)
   return -ENOENT;
 }

 return head->write(head);
}
