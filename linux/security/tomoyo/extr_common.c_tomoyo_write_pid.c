
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int eof; } ;
struct tomoyo_io_buffer {TYPE_1__ r; } ;



__attribute__((used)) static int tomoyo_write_pid(struct tomoyo_io_buffer *head)
{
 head->r.eof = 0;
 return 0;
}
