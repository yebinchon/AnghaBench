
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_io_buffer {int dummy; } ;


 int tomoyo_set_string (struct tomoyo_io_buffer*,char*) ;

__attribute__((used)) static void tomoyo_set_slash(struct tomoyo_io_buffer *head)
{
 tomoyo_set_string(head, "/");
}
