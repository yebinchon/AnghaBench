
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int w_pos; } ;
struct tomoyo_io_buffer {TYPE_1__ r; } ;


 int tomoyo_set_string (struct tomoyo_io_buffer*,char*) ;

__attribute__((used)) static bool tomoyo_set_lf(struct tomoyo_io_buffer *head)
{
 tomoyo_set_string(head, "\n");
 return !head->r.w_pos;
}
