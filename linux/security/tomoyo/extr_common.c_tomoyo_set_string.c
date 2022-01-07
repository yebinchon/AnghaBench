
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ w_pos; char const** w; } ;
struct tomoyo_io_buffer {TYPE_1__ r; } ;


 scalar_t__ TOMOYO_MAX_IO_READ_QUEUE ;
 int WARN_ON (int) ;
 int tomoyo_flush (struct tomoyo_io_buffer*) ;

__attribute__((used)) static void tomoyo_set_string(struct tomoyo_io_buffer *head, const char *string)
{
 if (head->r.w_pos < TOMOYO_MAX_IO_READ_QUEUE) {
  head->r.w[head->r.w_pos++] = string;
  tomoyo_flush(head);
 } else
  WARN_ON(1);
}
