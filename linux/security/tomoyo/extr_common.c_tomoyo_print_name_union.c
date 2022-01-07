
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tomoyo_name_union {TYPE_3__* filename; TYPE_2__* group; } ;
struct tomoyo_io_buffer {int dummy; } ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {TYPE_1__* group_name; } ;
struct TYPE_4__ {char* name; } ;


 int tomoyo_set_space (struct tomoyo_io_buffer*) ;
 int tomoyo_set_string (struct tomoyo_io_buffer*,char*) ;

__attribute__((used)) static void tomoyo_print_name_union(struct tomoyo_io_buffer *head,
        const struct tomoyo_name_union *ptr)
{
 tomoyo_set_space(head);
 if (ptr->group) {
  tomoyo_set_string(head, "@");
  tomoyo_set_string(head, ptr->group->group_name->name);
 } else {
  tomoyo_set_string(head, ptr->filename->name);
 }
}
