
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eof; } ;
struct tomoyo_io_buffer {TYPE_1__ r; } ;


 int tomoyo_io_printf (struct tomoyo_io_buffer*,char*) ;

__attribute__((used)) static void tomoyo_read_version(struct tomoyo_io_buffer *head)
{
 if (!head->r.eof) {
  tomoyo_io_printf(head, "2.6.0");
  head->r.eof = 1;
 }
}
