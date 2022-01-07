
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_number_union {int dummy; } ;
struct tomoyo_io_buffer {int dummy; } ;


 int tomoyo_print_number_union_nospace (struct tomoyo_io_buffer*,struct tomoyo_number_union const*) ;
 int tomoyo_set_space (struct tomoyo_io_buffer*) ;

__attribute__((used)) static void tomoyo_print_number_union(struct tomoyo_io_buffer *head,
          const struct tomoyo_number_union *ptr)
{
 tomoyo_set_space(head);
 tomoyo_print_number_union_nospace(head, ptr);
}
