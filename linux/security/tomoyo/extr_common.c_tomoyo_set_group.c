
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int acl_group_index; } ;
struct tomoyo_io_buffer {scalar_t__ type; TYPE_1__ r; } ;


 scalar_t__ TOMOYO_EXCEPTIONPOLICY ;
 int tomoyo_io_printf (struct tomoyo_io_buffer*,char*,int ) ;
 int tomoyo_print_namespace (struct tomoyo_io_buffer*) ;
 int tomoyo_set_string (struct tomoyo_io_buffer*,char const*) ;

__attribute__((used)) static void tomoyo_set_group(struct tomoyo_io_buffer *head,
        const char *category)
{
 if (head->type == TOMOYO_EXCEPTIONPOLICY) {
  tomoyo_print_namespace(head);
  tomoyo_io_printf(head, "acl_group %u ",
     head->r.acl_group_index);
 }
 tomoyo_set_string(head, category);
}
